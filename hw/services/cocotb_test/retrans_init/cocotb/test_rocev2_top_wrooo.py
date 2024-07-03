#!/usr/bin/env python
# SPDX-License-Identifier: BSD-2-Clause-Views
# Copyright (c) 2020-2023 The Regents of the University of California

import itertools
import logging
import os
import random
from enum import Enum
import cocotb_test.simulator

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, Edge
from cocotb.regression import TestFactory

from cocotbext.axi import AxiStreamBus, AxiStreamFrame, AxiStreamSource, AxiStreamSink, AxiStreamMonitor

from TB import TB, Word, Packet, MemCmd

# async def run_test(dut, sq_meta_length=1024, test_data=None, idle_inserter=None):
async def run_test(dut, test_data=None, idle_inserter=None):

    tb = TB(dut)

    await tb.reset()

    tb.set_idle_generator(idle_inserter)

    await cocotb.start(tb.get_tx_ib2udpFifo_din())
    await cocotb.start(tb.get_tx_ipUdpMetaFifo_din())

    await cocotb.start(tb.get_rx_udp2ibFifo_dout())

    await cocotb.start(tb.get_m_axis_mem_read_cmd())
    await cocotb.start(tb.get_m_axis_mem_write_cmd())
    
    PMTU = 4096
    tmp = 0
    # struct qpContext
    # {
    #     qpState	  newState;
    #     ap_uint<24> qp_num;
    #     ap_uint<24> remote_psn;
    #     ap_uint<24> local_psn;
    #     ap_uint<48> virtual_address;
    #     ap_uint<32> r_key; //16改成32了
    # };
    # 4+3+3+3+6+4
    qpState = dict(RESET=0, INIT=1, READY_RECV=2, READY_SEND=3, SQ_ERROR=4, ERROR=5)
    qp_interface_newState = 0
    qp_interface_qp_num = 2 # 对面是5
    qp_interface_remote_psn = 0
    qp_interface_local_psn = 0
    qp_interface_virtual_address = 0x222
    qp_interface_r_key = 0x111
    qp_interface = bytearray(qp_interface_newState.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(3, byteorder='little'))
    qp_interface += bytearray(qp_interface_qp_num.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_remote_psn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_local_psn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_virtual_address.to_bytes(6, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    qp_interface += bytearray(qp_interface_r_key.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(6, byteorder='little'))
    qp_interface = AxiStreamFrame(qp_interface)

    await tb.qp_interface_source.send(qp_interface)


    # struct ifConnReq
    # {
    #     ap_uint<16> qpn;
    #     ap_uint<24> remote_qpn;
    #     ap_uint<128> remote_ip_address; //TODO make variable
    #     ap_uint<16> remote_udp_port; //TODO what is this used for
    # };
    # 2+3+16+2
    conn_req_pqn = 2 # 对面是5
    conn_req_remote_pqn = 5 # 对面是2
    conn_req_remote_ip_address = 0x6789abcdef0123456789abcdef0
    conn_req_remote_udp_port = 0x1234
    qp_conn_interface = bytearray(conn_req_pqn.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_pqn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(9, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_ip_address.to_bytes(16, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_udp_port.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(14, byteorder='little'))

    qp_conn_interface = AxiStreamFrame(qp_conn_interface)
    await tb.qp_conn_interface_source.send(qp_conn_interface)

    tmp = 0
    # struct qpContext
    # {
    #     qpState	  newState;
    #     ap_uint<24> qp_num;
    #     ap_uint<24> remote_psn;
    #     ap_uint<24> local_psn;
    #     ap_uint<48> virtual_address;
    #     ap_uint<32> r_key; //16改成32了
    # };
    # 4+3+3+3+6+4
    qpState = dict(RESET=0, INIT=1, READY_RECV=2, READY_SEND=3, SQ_ERROR=4, ERROR=5)
    qp_interface_newState = 0
    qp_interface_qp_num = 5 # 对面是2
    qp_interface_remote_psn = 0
    qp_interface_local_psn = 0
    qp_interface_virtual_address = 0x444
    qp_interface_r_key = 0x333
    qp_interface = bytearray(qp_interface_newState.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(3, byteorder='little'))
    qp_interface += bytearray(qp_interface_qp_num.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_remote_psn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_local_psn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(qp_interface_virtual_address.to_bytes(6, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    qp_interface += bytearray(qp_interface_r_key.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(6, byteorder='little'))
    qp_interface = AxiStreamFrame(qp_interface)

    await tb.qp_interface_source.send(qp_interface)


    # struct ifConnReq
    # {
    #     ap_uint<16> qpn;
    #     ap_uint<24> remote_qpn;
    #     ap_uint<128> remote_ip_address; //TODO make variable
    #     ap_uint<16> remote_udp_port; //TODO what is this used for
    # };
    # 2+3+16+2
    conn_req_pqn = 5 # 对面是2
    conn_req_remote_pqn = 2 # 对面是5
    conn_req_remote_ip_address = 0xabcdef0123456789abcdef06789
    conn_req_remote_udp_port = 0x4321
    qp_conn_interface = bytearray(conn_req_pqn.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_pqn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(9, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_ip_address.to_bytes(16, byteorder='little'))
    qp_conn_interface = qp_conn_interface + bytearray(conn_req_remote_udp_port.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(14, byteorder='little'))

    qp_conn_interface = AxiStreamFrame(qp_conn_interface)
    await tb.qp_conn_interface_source.send(qp_conn_interface)

    await Timer(500, 'ns')

    # # /*
    # # * Types currently supported: DETH, RETH, AETH, ImmDt, IETH
    # # *
    # # * For reliable connections, page 246, 266, 269
    # # * RDM WRITE ONLY: RETH, PayLd
    # # * RDMA WRITE FIRST: RETH, PayLd
    # # * RDMA WRITE MIDDLE: PayLd
    # # * RDMA WRITE LAST: PayLd
    # # * RDMA READ REQUEST: RETH
    # # * RDMA READ RESPONSE ONLY: AETH, PayLd
    # # * RDMA READ RESPONSE FIRST: AETH, PayLd
    # # * RDMA READ RESPONSE MIDDLE: PayLd
    # # * RDMA READ RESPONSE LAST: AETH, PayLd
    # # * ACK: AETH
    # # */

    # // Probably rkey should be installed as part of the params in this structure - this comes from externally and carries all other relevant information 
    # struct txMeta
    # {
    #     ibOpCode 	 op_code; // 32
    #     ap_uint<10>  qpn; // vfid, pid
    #     ap_uint<1>   host;
    #     ap_uint<1>   lst;
    #     ap_uint<4>   offs;
    #     ap_uint<192> params; // laddr = meta.params(63,0); raddr = meta.params(127,64);length = meta.params(159,128);
    #     txMeta()
    #         :op_code(RC_RDMA_WRITE_ONLY) {}
    #     txMeta(ibOpCode op, ap_uint<10> qp, ap_uint<1> host, ap_uint<1> lst, ap_uint<4> offs, ap_uint<192> params)
    #                 :op_code(op), qpn(qp), host(host), lst(lst), offs(offs), params(params) {}
    # };
    # 4 + 2 + 24(24 = 8+8+8)
    # typedef enum {
    #     RC_SEND_FIRST = 0x00,
    #     RC_SEND_MIDDLE = 0x01,
    #     RC_SEND_LAST = 0x02,
    #     RC_SEND_LAST_WITH_IMD = 0x03,
    #     RC_SEND_ONLY = 0x04,
    #     RC_SEND_ONLY_WITH_IMD = 0x05,
    #     RC_RDMA_WRITE_FIRST = 0x06,
    #     RC_RDMA_WRITE_MIDDLE = 0x07,
    #     RC_RDMA_WRITE_LAST = 0x08,
    #     RC_RDMA_WRITE_LAST_WITH_IMD = 0x09,
    #     RC_RDMA_WRITE_ONLY = 0x0A,
    #     RC_RDMA_WRITE_ONLY_WIT_IMD = 0x0B,
    #     RC_RDMA_READ_REQUEST = 0x0C,
    #     RC_RDMA_READ_RESP_FIRST = 0x0D,
    #     RC_RDMA_READ_RESP_MIDDLE = 0x0E,
    #     RC_RDMA_READ_RESP_LAST = 0x0F,
    #     RC_RDMA_READ_RESP_ONLY = 0x10,
    #     RC_ACK = 0x11,
    # } ibOpCode;
    local_ip_address = 0x112233445566778899aabbccdd
    tb.dut.local_ip_address.value = local_ip_address
    # RC_RDMA_WRITE_FIRST
    sq_meta_op_code = 6
    sq_meta_qpn = 2
    sq_meta_params_len = PMTU
    sq_meta_params_laddr = 0x2222222222222222
    sq_meta_params_raddr = 0x123456789abcdef1
    # sq_meta_params = 0x111111111111111111111111111111111111111111111111
    sq_meta = bytearray(sq_meta_op_code.to_bytes(1, byteorder='little')) + bytearray(tmp.to_bytes(3, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_qpn.to_bytes(2, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_laddr.to_bytes(8, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_raddr.to_bytes(8, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_len.to_bytes(8, byteorder='little'))
    sq_meta = AxiStreamFrame(sq_meta)
    await tb.sq_meta_source.send(sq_meta)
    
    rx_frame_read_mem_cmd = await tb.mem_read_cmd_sink.recv()
    print("        收到内存读命令 rx_frame1: %s", repr(rx_frame_read_mem_cmd))
    read_mem_cmd = MemCmd(rx_frame_read_mem_cmd.tdata)
    read_mem_cmd.print_MemCmd()

    mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(1, 256)), PMTU))
    mem_read_data_keep = [1] * PMTU
    mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    await tb.mem_read_data_source.send(mem_read_data_frame)

    await Edge(tb.dut.s_axis_mem_read_data_tlast)

    num_pkt = 10
    
    for i in range(num_pkt - 2):
        # RC_RDMA_WRITE_MIDDLE
        sq_meta_op_code = 7
        sq_meta_qpn = 2
        sq_meta_params_len = PMTU
        sq_meta_params_laddr = 0x2222222222223222 + i * PMTU
        sq_meta_params_raddr = 0x123456789abcdef1 + i * PMTU
        # sq_meta_params = 0x01234567800005800123456789abcdef0123456789abcdef
        sq_meta = bytearray(sq_meta_op_code.to_bytes(1, byteorder='little')) + bytearray(tmp.to_bytes(3, byteorder='little'))
        sq_meta = sq_meta + bytearray(sq_meta_qpn.to_bytes(2, byteorder='little'))
        sq_meta = sq_meta + bytearray(sq_meta_params_laddr.to_bytes(8, byteorder='little'))
        sq_meta = sq_meta + bytearray(sq_meta_params_raddr.to_bytes(8, byteorder='little'))
        sq_meta = sq_meta + bytearray(sq_meta_params_len.to_bytes(8, byteorder='little'))
        sq_meta = AxiStreamFrame(sq_meta)
        print("送sq meta", i)
        await tb.sq_meta_source.send(sq_meta)

        print("收内存读命令", i)
        rx_frame_read_mem_cmd = await tb.mem_read_cmd_sink.recv()
        print("        收到内存读命令 rx_frame1: %s", repr(rx_frame_read_mem_cmd))
        read_mem_cmd = MemCmd(rx_frame_read_mem_cmd.tdata)
        read_mem_cmd.print_MemCmd()

        mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(1, 256)), PMTU))
        mem_read_data_keep = [1] * PMTU
        mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)

        print("发内存数据", i)
        await tb.mem_read_data_source.send(mem_read_data_frame)

        await Edge(tb.dut.s_axis_mem_read_data_tlast)

        print("内存数据发完", i)


    # RC_RDMA_WRITE_LAST
    sq_meta_op_code = 8
    sq_meta_qpn = 2
    sq_meta_params_len = PMTU
    sq_meta_params_laddr = 0x2222222222222222 + num_pkt * PMTU
    sq_meta_params_raddr = 0x123456789abcdef1 + num_pkt * PMTU
    # sq_meta_params = 0x01234567800005800123456789abcdef0123456789abcdef
    sq_meta = bytearray(sq_meta_op_code.to_bytes(1, byteorder='little')) + bytearray(tmp.to_bytes(3, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_qpn.to_bytes(2, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_laddr.to_bytes(8, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_raddr.to_bytes(8, byteorder='little'))
    sq_meta = sq_meta + bytearray(sq_meta_params_len.to_bytes(8, byteorder='little'))
    sq_meta = AxiStreamFrame(sq_meta)
    await tb.sq_meta_source.send(sq_meta)

    print("收内存读命令", i)
    rx_frame_read_mem_cmd = await tb.mem_read_cmd_sink.recv()
    print("        收到内存读命令 rx_frame1: %s", repr(rx_frame_read_mem_cmd))
    read_mem_cmd = MemCmd(rx_frame_read_mem_cmd.tdata)
    read_mem_cmd.print_MemCmd()


    mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(1, 256)), PMTU))
    mem_read_data_keep = [1] * PMTU
    mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    await tb.mem_read_data_source.send(mem_read_data_frame)


    # 测RX，m_axis_tx_data输出的是ack
    
    await Timer(500, 'ns')

    rx_frames = []
    rx_packet = []
    for i in range(num_pkt):
        print("收TX的数据包: ", i)
        rx_frame1 = await tb.tx_data_sink.recv()

        tb.log.info("        收到向外传输的数据包: %s", repr(rx_frame1))
        rx_frames.append(rx_frame1)
        # await tb.rx_data_source.send(rx_frame1)

    # WRITE数据包 -> RX
    # for i in range(2):
    for i in range(num_pkt):
        print("rx_data_source: ", i)
        await tb.rx_data_source.send(rx_frames[i])

    # await tb.rx_data_source.send(rx_frames[1])
    # await tb.rx_data_source.send(rx_frames[4])
    # await tb.rx_data_source.send(rx_frames[5])
    # await tb.rx_data_source.send(rx_frames[6])
 
    # TX 输出 ACK
    rx_acks = []
    # for i in range(3):
    for i in range(num_pkt):
        print("TX向外传输的ACK: ", i)
        rx_frame1 = await tb.tx_data_sink.recv()
        tb.log.info("        收到向外传输的ACK: %s", repr(rx_frame1))
        rx_acks.append(rx_frame1)


    # for i in range(2):
    for i in range(num_pkt):
        print("TX向内存传输Payload: ", i)
        rx_frame1 = await tb.mem_write_data_sink.recv()
        tb.log.info("        TX向内存传输Payload: %s", repr(rx_frame1))
        # rx_acks.append(rx_frame1)

    await Timer(500, 'ns')

    # 传ACK和NAK进RX
    for i in range(num_pkt):
        if i == 2:
            await tb.rx_data_source.send(rx_acks[3])
        elif i == 3:
            await tb.rx_data_source.send(rx_acks[2])
        else:
            await tb.rx_data_source.send(rx_acks[i])

    # await Timer(1000, 'ns')
        
    # for i in range(5):
    #     print("收内存读命令", i)
    #     rx_frame_read_mem_cmd = await tb.mem_read_cmd_sink.recv()
    #     print("        收到内存读命令 rx_frame1: %s", repr(rx_frame_read_mem_cmd))
    #     read_mem_cmd = MemCmd(rx_frame_read_mem_cmd.tdata)
    #     read_mem_cmd.print_MemCmd()

    #     mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(3, 256)), PMTU))
    #     mem_read_data_keep = [1] * PMTU
    #     mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    #     await tb.mem_read_data_source.send(mem_read_data_frame)

    # # mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(4, 256)), PMTU))
    # # mem_read_data_keep = [1] * PMTU
    # # mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    # # await tb.mem_read_data_source.send(mem_read_data_frame)

    # # mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(5, 256)), PMTU))
    # # mem_read_data_keep = [1] * PMTU
    # # mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    # # await tb.mem_read_data_source.send(mem_read_data_frame)


    # rx_frames = []
    # for i in range(5):
    #     print("tx_data_sink: ", i)
    #     rx = await tb.tx_data_sink.recv()
    #     rx_frames.append(rx)
    
    # await RisingEdge(tb.dut.clk)

    # for i in range(5):
    #     await tb.rx_data_source.send(rx_frames[i])


    # for i in range(5):
    # # for i in range(num_pkt):
    #     print("TX向内存传输Payload: ", i)
    #     rx_frame1 = await tb.mem_write_data_sink.recv()
    #     tb.log.info("        TX向内存传输Payload: %s", repr(rx_frame1))
    
    # for i in range(5):
    #     print("TX向外传输的ACK: ", i)
    #     rx_frame1 = await tb.tx_data_sink.recv()
    #     tb.log.info("        收到向外传输的ACK: %s", repr(rx_frame1))
    #     rx_acks.append(rx_frame1)


    # 单WRITE操作完毕，接下来是READ操作
    
    # local_ip_address = 0x112233445566778899aabbccdd
    # tb.dut.local_ip_address.value = local_ip_address
    # # RC_RDMA_READ_REQUEST
    # tx_meta_op_code = 0x0C
    # tx_meta_qpn = 5 # 2
    # tx_meta_params_len = 4096*5
    # tx_meta_params_laddr = 0x2222222222222222
    # tx_meta_params_raddr = 0x0123456789abcdef
    # # tx_meta_params = 0x111111111111111111111111111111111111111111111111
    # tx_meta = bytearray(tx_meta_op_code.to_bytes(1, byteorder='little')) + bytearray(tmp.to_bytes(3, byteorder='little'))
    # tx_meta = tx_meta + bytearray(tx_meta_qpn.to_bytes(2, byteorder='little'))
    # tx_meta = tx_meta + bytearray(tx_meta_params_laddr.to_bytes(8, byteorder='little'))
    # tx_meta = tx_meta + bytearray(tx_meta_params_raddr.to_bytes(8, byteorder='little'))
    # tx_meta = tx_meta + bytearray(tx_meta_params_len.to_bytes(8, byteorder='little'))
    # tx_meta = AxiStreamFrame(tx_meta)
    # await tb.sq_meta_source.send(tx_meta)

    # rx_frames = []
    # rx_packet = []
    # for i in range(1):
    #     rx_frame1 = await tb.tx_data_sink.recv()
    #     # tlast = tb.dut.m_axis_tx_data_tlast.value
    #     # tkeep = tb.dut.m_axis_tx_data_tkeep.value
    #     tb.log.info("        QP5向外传输ReadRequest:     %s", repr(rx_frame1))

    #     rx_frames.append(rx_frame1)

    # # ReadRequest -> RX

    # # 发送ReadRequest数据包
    # await tb.rx_data_source.send(rx_frames[0])
  
    # struct memCmd
    # {
    #     ap_uint<48> addr;
    #     ap_uint<28> len;
    #     ap_uint<1>  ctl;
    #     ap_uint<1>  strm;
    #     ap_uint<1>  sync;
    #     ap_uint<1>  host;
    #     ap_uint<4>  tdst;
    #     ap_uint<6>  pid;
    #     ap_uint<4>  vfid; 
    #     memCmd() {}
    #     memCmd(ap_uint<64> addr, ap_uint<28> len, ap_uint<1> ctl, ap_uint<1> host, ap_uint<6> pid, ap_uint<4> vfid)
    #         :addr(addr(47,0)), len(len), ctl(ctl), strm(addr(52,52)), sync(0), host(host), tdst(addr(51,48)), pid(pid), vfid(vfid) {}
    #     memCmd(ap_uint<64> addr, ap_uint<28> len, ap_uint<1> ctl, ap_uint<1> host, ap_uint<24> qpn)
    #         :addr(addr(47,0)), len(len), ctl(ctl), strm(addr(52,52)), sync(0), host(host), tdst(addr(51,48)), pid(qpn(5,0)), vfid(qpn(9,6)) {}
    #     memCmd(ap_uint<64> addr, ap_uint<28> len, ap_uint<1> ctl, ap_uint<1> sync, ap_uint<1> host, ap_uint<4> tdst, ap_uint<6> pid, ap_uint<4> vfid)
    #         :addr(addr(47,0)), len(len), ctl(ctl), strm(0), sync(sync), host(host), tdst(tdst), pid(pid), vfid(vfid) {}
    #     memCmd(ap_uint<64> addr, ap_uint<28> len, ap_uint<1> ctl, ap_uint<1> sync, ap_uint<1> host, ap_uint<4> tdst, ap_uint<24> qpn)
    #         :addr(addr(47,0)), len(len), ctl(ctl), strm(0), sync(sync), host(host), tdst(tdst), pid(qpn(5,0)), vfid(qpn(9,6)) {}
    # };
    # num_mem_read_cmd = (tx_meta_params_len + PMTU - 1) // PMTU
    # read_mem_cmds = []
    # for i in range(num_mem_read_cmd):
    #     rx_frame_read_mem_cmd = await tb.mem_read_cmd_sink.recv()
    #     print("        收到内存读命令 rx_frame1: %s", repr(rx_frame_read_mem_cmd))
    #     read_mem_cmd = MemCmd(rx_frame_read_mem_cmd.tdata)
    #     read_mem_cmd.print_MemCmd()
    #     read_mem_cmds.append(read_mem_cmd)

    # # 送内存数据
    # for cmd in read_mem_cmds:
    #     len = cmd.get_len()
    #     mem_read_data_alldata = bytes(itertools.islice(itertools.cycle(range(0xaa, 256)), len))
    #     mem_read_data_keep = [1] * len
    #     mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_alldata, tkeep=mem_read_data_keep)
    #     await tb.mem_read_data_source.send(mem_read_data_frame)
    #     await RisingEdge(tb.dut.clk)

    # # 生成ReadResponse数据帧
    # tx_data_frames = []
    # print("num_mem_read_cmd = ", num_mem_read_cmd)
    # for i in range(num_mem_read_cmd):
    #     tx_data_frame = await tb.tx_data_sink.recv()
    #     tx_data_frames.append(tx_data_frame)
    #     print("        收到ReadResponse数据帧: %s", repr(tx_data_frame))

    # await Timer(1000, 'ns')

    # # ReadResponse -> RX
    # for i in range(num_mem_read_cmd):
    #     print("发送ReadResponse数据帧给RX: ", i)
    #     await tb.rx_data_source.send(tx_data_frames[i])
    
    await Timer(5000, 'ns')
    
    tb.print_tx_packets()
    print("")
    tb.print_rx_packets()
    print("")
    tb.print_memreadcmd()
    print("")
    tb.print_memwritecmd()




    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


def cycle_pause():
    return itertools.cycle([1, 1, 1, 0])


def size_list():
    return list(range(1, 5))


def incrementing_payload(length):
    return bytes(itertools.islice(itertools.cycle(range(1, 256)), length))


if cocotb.SIM_NAME:

    factory = TestFactory(run_test)
    # factory.add_option("sq_meta_length", sq_meta_lengths)
    # factory.add_option("test_data", [getdata])
    # factory.add_option("idle_inserter", [None, cycle_pause])
    factory.generate_tests()


# cocotb-test

tests_dir = os.path.dirname(__file__)
rtl_dir = os.path.abspath(os.path.join(tests_dir, '..', 'verilog'))

# 使用时需要将test_rocev2_top_write修改回test_rocev2_top
def test_rocev2_top_wr_ackooo(request):
# def test_rocev2_top(request):
    dut = "rocev2_top"
    module = os.path.splitext(os.path.basename(__file__))[0]
    toplevel = dut + "_top"

    sim_build = os.path.join(tests_dir, "sim_build",
        request.node.name.replace('[', '-').replace(']', ''))

    cocotb_test.simulator.run(
        python_search=[tests_dir],
        # verilog_sources=verilog_sources,
        toplevel=toplevel,
        module=module,
        sim_build=sim_build,
    )
