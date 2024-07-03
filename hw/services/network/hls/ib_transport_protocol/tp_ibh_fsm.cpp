#include "ib_transport_protocol"


template <int INSTID = 0>
void rx_ibh_fsm(
	stream<ibhMeta>& metaIn,
	stream<exhMeta>& exhMetaFifo,
	stream<rxStateRsp>& stateTable_rsp,
	stream<rxStateReq_ck>& stateTable_upd_req,
	stream<ibhMeta>& metaOut,
	stream<ackEvent>& ibhEventFifo,
	stream<bool>& ibhDropFifo,
	stream<fwdPolicy>& ibhDropMetaFifo,
	stream<ackMeta>& m_axis_rx_ack_meta,
#ifdef RETRANS_EN
	stream<rxTimerUpdate>&	rxClearTimer_req,
	stream<retransUpdate>&	rx2retrans_upd,
#endif
	ap_uint<32>&		regInvalidPsnDropCount
) {
#pragma HLS inline off
#pragma HLS pipeline II=1
	enum fsmStateType{LOAD, PROCESS};
	static fsmStateType fsmState = LOAD;
	static ibhMeta meta;
	static exhMeta emeta;
	static bool isResponse;
	static ap_uint<32> droppedPackets = 0;
	rxStateRsp qpState;


	switch(fsmState)
	{
	case LOAD:
		if (!metaIn.empty() && !exhMetaFifo.empty())
		{
			metaIn.read(meta);
			exhMetaFifo.read(emeta);
			isResponse = checkIfResponse(meta.op_code);
			stateTable_upd_req.write(rxStateReq_ck(meta.dest_qp, isResponse));
			fsmState = PROCESS;
		}
		break;
	case PROCESS:
		//TODO TIME-WAIT
		//TODO consider opCode??
		if (!stateTable_rsp.empty())
		{
			stateTable_rsp.read(qpState);
			//ap_uint<24> oldest_outstanding_psn = qpState.epsn- 8388608;
			//TODO compute or store oldest outstanding??
			//TODO also increment oldest outstanding
			//Check if in order
			//TODO Update oldest_oustanding_psn
			//TODO this is not working with coalescing ACKs
			std::cout << std::hex << "[RX IBH FSM " << INSTID << "]: epsn: " << qpState.epsn << ", packet psn: " << meta.psn << std::endl;
			// For requests we require total order, for responses, there is potential ACK coalescing, see page 299
			// For requests, max_forward == epsn

			if (qpState.epsn == meta.psn || meta.op_code == RC_ACK)
			{ 

				// Forwarding
				if (meta.op_code != RC_ACK && meta.op_code != RC_RDMA_READ_REQUEST) //TODO do length check instead
				{
					ibhDropFifo.write(false);
                }
				ibhDropMetaFifo.write(fwdPolicy(false, false));

				// EXH
				metaOut.write(ibhMeta(meta.op_code, meta.partition_key, meta.dest_qp, meta.psn, meta.validPSN));

				// Update psn
				//TODO for last param we need vaddr here!
				if (!emeta.isNak && (meta.op_code != RC_ACK || ((qpState.epsn <= meta.psn && meta.psn <= qpState.max_forward)
					|| ((qpState.epsn <= meta.psn || meta.psn <= qpState.max_forward) && qpState.max_forward < qpState.epsn))))
				{
					// if the next req is invalid, trigger NAK
					stateTable_upd_req.write(rxStateReq(meta.dest_qp, meta.psn+emeta.numPkg, isResponse));
				}
#ifdef RETRANS_EN

				// Update oldest-unacked-reqeust
				if (isResponse && !emeta.isNak)
				{
					std::cout << std::hex <<"[RX IBH FSM " << INSTID << "]: retrans update, psn " << meta.psn << std::endl;

                    // Retrans table update
					rx2retrans_upd.write(retransUpdate(meta.dest_qp, meta.psn, meta.op_code));

                    if (meta.op_code != RC_RDMA_READ_RESP_FIRST && meta.op_code != RC_RDMA_READ_RESP_MIDDLE) {
                        // to flow control
                        m_axis_rx_ack_meta.write(ackMeta(meta.op_code == RC_ACK, meta.dest_qp, meta.psn));
                    }
				}
				// Check if no oustanding requests -> stop timer
				if (isResponse && meta.op_code != RC_RDMA_READ_RESP_MIDDLE)
				{
					rxClearTimer_req.write(rxTimerUpdate(meta.dest_qp, meta.psn == qpState.max_forward));
#ifndef __SYNTHESIS__
					if (meta.psn  == qpState.max_forward)
					{
						std::cout << std::hex << "[RX IBH FSM " << INSTID << "]: clearing transport timer at psn " << meta.psn << std::endl;
					}
#endif
				}
#endif
			}
			// Check for duplicates
			// For response: epsn = old_unack, old_oustanding = old_valid
			else if ((qpState.oldest_outstanding_psn < qpState.epsn && meta.psn < qpState.epsn && meta.psn >= qpState.oldest_outstanding_psn)
					 || (qpState.oldest_outstanding_psn > qpState.epsn && (meta.psn < qpState.epsn || meta.psn >= qpState.oldest_outstanding_psn)))
			{
				// Read request re-execute
				if (meta.op_code == RC_RDMA_READ_REQUEST)
				{
					std::cout << std::hex << "[RX IBH FSM" << INSTID << "]: duplicate read_req psn " << meta.psn << std::endl;
					//ibhDropFifo.write(false);
					ibhDropMetaFifo.write(fwdPolicy(false, false));
					metaOut.write(ibhMeta(meta.op_code, meta.partition_key, meta.dest_qp, meta.psn, meta.validPSN));
					//No release required
					//stateTable_upd_req.write(rxStateReq(meta.dest_qp, meta.psn, meta.partition_key, 0)); //TODO always +1??
				}
				// Write requests acknowledge, see page 313
				else if (checkIfWrite(meta.op_code))
				{
					//Send out ACK
					ibhEventFifo.write(ackEvent(meta.dest_qp, meta.psn, false)); //TODO do we need PSN???
					std::cout << std::hex << "[RX IBH FSM " << INSTID << "]: dropping duplicate psn " << meta.psn << std::endl;
					droppedPackets++;
					regInvalidPsnDropCount = droppedPackets;
					ibhDropFifo.write(true);
					//Meta is required for ACK, TODO no longer
					ibhDropMetaFifo.write(fwdPolicy(false, true));
				}
				//TODO what about duplicate responses
				// Drop them
				else
				{
					// Case Requester: Valid ACKs -> reset timer TODO
					// Propagate ACKs for flow control
					if (meta.op_code != RC_ACK) //TODO do length check instead
					{
						ibhDropFifo.write(true);
					} 
					ibhDropMetaFifo.write(fwdPolicy(true, false));
				}
			}
			else // completely invalid
			{
				// behavior, see page 313
				std::cout << std::hex << "[RX IBH FSM " << INSTID << "]: dropping invalid psn " << meta.psn << " with retry " << qpState.retryCounter << std::endl;
				droppedPackets++;
				regInvalidPsnDropCount = droppedPackets;
				ibhDropMetaFifo.write(fwdPolicy(true, false));

				// Issue NAK TODO NAK has to be in sequence
				if (meta.op_code != RC_ACK)
				{
					ibhDropFifo.write(true);
					// Do not generate further ACK/NAKs until we received a valid pkg
					if (qpState.retryCounter == 0x7)
					{
						if (isResponse)
						{
							std::cout << "[RX IBH FSM " << INSTID << "]: sending NAK on psn " << meta.psn << std::endl;
							ibhEventFifo.write(ackEvent(meta.dest_qp, meta.psn, true));
						}
						else
						{
							std::cout << "[RX IBH FSM " << INSTID << "]: sending NAK on epsn " << qpState.epsn << std::endl;
							// Setting NAK to epsn, since otherwise epsn-1 is used
							ibhEventFifo.write(ackEvent(meta.dest_qp, qpState.epsn, true));
						}
						qpState.retryCounter--;
					}
					// We do not increment PSN
					stateTable_upd_req.write(rxStateReq(meta.dest_qp, qpState.epsn, qpState.retryCounter, isResponse));
				}
			}

			fsmState = LOAD;
		}
		break;
	}
}