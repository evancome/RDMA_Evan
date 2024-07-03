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

from TB import TB, Word, Packet, MemCmd, CQE

RC_SEND_FIRST = 0x00
RC_SEND_MIDDLE = 0x01
RC_SEND_LAST = 0x02
RC_SEND_LAST_WITH_IMD = 0x03
RC_SEND_ONLY = 0x04
RC_SEND_ONLY_WITH_IMD = 0x05
RC_RDMA_WRITE_FIRST = 0x06
RC_RDMA_WRITE_MIDDLE = 0x07
RC_RDMA_WRITE_LAST = 0x08
RC_RDMA_WRITE_LAST_WITH_IMD = 0x09
RC_RDMA_WRITE_ONLY = 0x0A
RC_RDMA_WRITE_ONLY_WIT_IMD = 0x0B
RC_RDMA_READ_REQUEST = 0x0C
RC_RDMA_READ_RESP_FIRST = 0x0D
RC_RDMA_READ_RESP_MIDDLE = 0x0E
RC_RDMA_READ_RESP_LAST = 0x0F
RC_RDMA_READ_RESP_ONLY = 0x10
RC_ACK = 0x11
WR_RECEIVE = 0x12
PMTU = 4096
page = 256*1024


async def qp_interface(tb, state, qpn, rpsn, lpsn, cq_id):#, cq_paddr, cq_depth, cqe_size):
    tmp = 0
	# qpState		newState;
	# ap_uint<24> qp_num;
	# ap_uint<24> remote_psn;
	# ap_uint<24> local_psn;
	# ap_uint<16> cq_id;// 建QP的时候需要绑定CQ，暂时一个， SQ和RQ都完善之后再加对应的cqn
	# ap_uint<64> cq_paddr;
	# ap_uint<10> cq_depth;
	# ap_uint<8>  cqe_size;
    qp_interface = bytearray(state.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(3, byteorder='little'))
    qp_interface += bytearray(qpn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(rpsn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(lpsn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(1, byteorder='little'))
    qp_interface += bytearray(cq_id.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    # qp_interface += bytearray(cq_paddr.to_bytes(8, byteorder='little'))# + bytearray(tmp.to_bytes(6, byteorder='little'))
    # cq_depth_size = (cqe_size << 10) + cq_depth
    # qp_interface += bytearray(cq_depth_size.to_bytes(3, byteorder='little'))
    qp_interface = AxiStreamFrame(qp_interface)

    await tb.qp_interface_source.send(qp_interface)


async def cq_interface(tb, cq_id, cq_depth, cqe_size, cq_paddr):
	# ap_uint<16> cq_id;
	# ap_uint<64> cq_addr;
	# ap_uint<10> cq_depth;
	# ap_uint<8>  cqe_size;
    cq_interface = bytearray(cq_id.to_bytes(2, byteorder='little'))
    cq_interface += bytearray(cq_paddr.to_bytes(8, byteorder='little'))
    cq_depth_size = (cqe_size << 10) + cq_depth
    cq_interface += bytearray(cq_depth_size.to_bytes(3, byteorder='little'))
    cq_interface = AxiStreamFrame(cq_interface)

    await tb.cq_interface_source.send(cq_interface)


async def conn_interface(tb, qpn, rqpn, rIPAddr, rUDPPort):

    # struct ifConnReq
    # {
    #     ap_uint<16> qpn;
    #     ap_uint<24> remote_qpn;
    #     ap_uint<128> remote_ip_address; //TODO make variable
    #     ap_uint<16> remote_udp_port; //TODO what is this used for
    # };
    # 2+3+16+2
    # conn_req_pqn = 2 # 对面是5
    # conn_req_remote_pqn = 5 # 对面是2
    # conn_req_remote_ip_address = 0x6789abcdef0123456789abcdef0
    # conn_req_remote_udp_port = 0x1234
    qp_conn_interface = bytearray(qpn.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    qp_conn_interface += bytearray(rqpn.to_bytes(3, byteorder='little'))# + bytearray(tmp.to_bytes(9, byteorder='little'))
    qp_conn_interface += bytearray(rIPAddr.to_bytes(16, byteorder='little'))
    qp_conn_interface += bytearray(rUDPPort.to_bytes(2, byteorder='little'))# + bytearray(tmp.to_bytes(14, byteorder='little'))
    qp_conn_interface = AxiStreamFrame(qp_conn_interface)

    await tb.qp_conn_interface_source.send(qp_conn_interface)


async def mr_register(tb, localAddr, length, rkey):
    s_axis_mr_register = bytearray(localAddr.to_bytes(8, byteorder='little'))# + bytearray(tmp.to_bytes(2, byteorder='little'))
    s_axis_mr_register += bytearray(length.to_bytes(4, byteorder='little'))# + bytearray(tmp.to_bytes(9, byteorder='little'))
    s_axis_mr_register += bytearray(rkey.to_bytes(4, byteorder='little'))
    s_axis_mr_register = AxiStreamFrame(s_axis_mr_register)

    await tb.mr_register_source.send(s_axis_mr_register)


async def send_sq_meta(tb, wr_id, qpn, host, lst, offs, opcode, raddr, rlength, rkey, laddr, llength, lkey, immdt=0):
    tmp = 0
    # sq_meta_source
    sq_meta_qpn = (offs<<12) + (lst<<11)+ (host<<10) + qpn
    sq_meta_opcode = opcode << 27
    sq_meta = bytearray(wr_id.to_bytes(2, byteorder='little'))
    sq_meta += bytearray(sq_meta_qpn.to_bytes(2, byteorder='little'))
    sq_meta += bytearray(sq_meta_opcode.to_bytes(4, byteorder='little'))
    sq_meta += bytearray(immdt.to_bytes(4, byteorder='little'))
    sq_meta = AxiStreamFrame(sq_meta)
    # sq_transaction_meta_source
    sq_transaction_meta = bytearray(raddr.to_bytes(8, byteorder='little'))
    sq_transaction_meta += bytearray(rlength.to_bytes(4, byteorder='little'))
    sq_transaction_meta += bytearray(rkey.to_bytes(4, byteorder='little'))
    sq_transaction_meta += bytearray(laddr.to_bytes(8, byteorder='little'))
    sq_transaction_meta += bytearray(llength.to_bytes(4, byteorder='little'))
    sq_transaction_meta += bytearray(lkey.to_bytes(4, byteorder='little'))

    await tb.sq_meta_source.send(sq_meta)
    await tb.sq_transaction_meta_source.send(sq_transaction_meta)


async def set_ip_address(tb, local_ip_address):
    tb.dut.local_ip_address.value = local_ip_address


async def recv_tx_data_frame(tb, num):
    tx_datas = []
    for i in range(num):
        print("        等待接收TX数据帧...")
        rx_frame1 = await tb.tx_data_sink.recv()
        # print("        收到TX数据帧:\n %s", repr(rx_frame1))
        tx_datas.append(rx_frame1)
    return tx_datas


async def send_rx_data_by_frames(tb, frames, num):
    for i in range(num):
        await tb.rx_data_source.send(frames[i])


async def recv_mem_read_cmd(tb, num_packets):
    mem_read_cmds = []
    for i in range(num_packets):
        print("        等待接收内存读命令...")
        frame_mem_read_cmd = await tb.mem_read_cmd_sink.recv()
        print("        收到内存读命令:\n %s", repr(frame_mem_read_cmd))
        mem_read_cmd = MemCmd(frame_mem_read_cmd.tdata)
        mem_read_cmd.print_MemCmd()
        mem_read_cmds.append(mem_read_cmd)
    return mem_read_cmds


async def recv_mem_write_cmd_data(tb, num_packets):
    mem_write_cmds = []
    words_data = []
    for i in range(num_packets):
        frame_mem_write_cmd = await tb.mem_write_cmd_sink.recv()
        frame_mem_write_data = await tb.mem_write_data_sink.recv()

        print("        收到内存读命令:\n %s", repr(frame_mem_write_cmd))
        mem_write_cmd = MemCmd(frame_mem_write_cmd.tdata)
        mem_write_cmd.print_MemCmd()
        mem_write_cmds.append(mem_write_cmd)
        # mem_write_data = Word(hex(frame_mem_write_data))
        # words_data.append(mem_write_data)
    return mem_write_cmds#, words_data



async def send_rx_data_by_memcmd(tb, mem_read_cmds):
    # 送内存数据
    for cmd in mem_read_cmds:
        len = cmd.get_len()
        mem_read_data_data = bytes(itertools.islice(itertools.cycle(range(0xaa, 256)), len))
        mem_read_data_keep = [1] * len
        mem_read_data_frame = AxiStreamFrame(tdata=mem_read_data_data, tkeep=mem_read_data_keep)
        await tb.mem_read_data_source.send(mem_read_data_frame)
        await RisingEdge(tb.dut.clk)


async def recv_cqe(tb, num=1):
    cqes = []
    for i in range(num):
        cqe = await tb.rx_ack_meta_sink.recv()
        cqe = CQE(cqe.tdata)
        cqes.append(cqe)
    return cqes


async def process_write_with_immdt(tb, wr_id_write, wr_id_receive, qpn_write, qpn_receive, host, laddr, raddr, len, rkey, lkey, immdt):

    await send_sq_meta(tb, wr_id=wr_id_receive, qpn=qpn_receive, host=0, lst=1, offs=0, opcode=WR_RECEIVE, laddr=raddr, raddr=laddr, rlength=len, llength=len, rkey=lkey, lkey=rkey)
    print("        开始处理写请求...")
    num_packets = (len + PMTU - 1) // PMTU
    # sq_meta
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_FIRST, wr_id=wr_id_write, qpn=qpn_write, host=host, lst=0, offs=0, laddr=laddr, raddr=raddr, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    else:
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_ONLY_WIT_IMD, wr_id=wr_id_write, qpn=qpn_write, host=host, lst=1, offs=0, laddr=laddr, raddr=raddr, rlength=len, llength=len, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 2):
        for i in range(1, num_packets-1):
            await send_sq_meta(tb, opcode=RC_RDMA_WRITE_MIDDLE, wr_id=wr_id_write, qpn=qpn_write, host=host, lst=0, offs=0, laddr=laddr+PMTU*i, raddr=raddr+PMTU*i, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_LAST_WITH_IMD, wr_id=wr_id_write, qpn=qpn_write, host=host, lst=1, offs=0, laddr=laddr+PMTU*(num_packets-1), raddr=raddr+PMTU*(num_packets-1), rlength=((len+PMTU-1)%PMTU+1), llength=((len+PMTU-1)%PMTU+1), rkey=rkey, lkey=lkey, immdt=immdt)
    # get mem data
    mem_read_cmds = await recv_mem_read_cmd(tb, num_packets)
    await send_rx_data_by_memcmd(tb, mem_read_cmds)
    await Timer(1000, 'ns')
    # get packets
    write_tx_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send packets
    await send_rx_data_by_frames(tb, write_tx_frames, num_packets)
    await recv_mem_write_cmd_data(tb, num_packets)
    # get ack
    write_ack_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send ack
    await send_rx_data_by_frames(tb, write_ack_frames, num_packets)
    # get cqe
    await recv_cqe(tb, 2)
    await Timer(1000, 'ns')


async def process_write(tb, wr_id, qpn, host, laddr, raddr, len, rkey, lkey, immdt=0):
    print("        开始处理写请求...")
    num_packets = (len + PMTU - 1) // PMTU
    # sq_meta
    # (tb, wr_id, qpn, host, lst, offs, opcode, raddr, rlength, rkey, laddr, llength, lkey)
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_FIRST, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr, raddr=raddr, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    else:
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_ONLY, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr, raddr=raddr, rlength=len, llength=len, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 2):
        for i in range(1, num_packets-1):
            await send_sq_meta(tb, opcode=RC_RDMA_WRITE_MIDDLE, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr+PMTU*i, raddr=raddr+PMTU*i, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_RDMA_WRITE_LAST, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr+PMTU*(num_packets-1), raddr=raddr+PMTU*(num_packets-1), rlength=((len+PMTU-1)%PMTU+1), llength=((len+PMTU-1)%PMTU+1), rkey=rkey, lkey=lkey, immdt=immdt)
    # get mem data
    mem_read_cmds = await recv_mem_read_cmd(tb, num_packets)
    await send_rx_data_by_memcmd(tb, mem_read_cmds)
    await Timer(1000, 'ns')
    # get packets
    write_tx_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send packets
    await send_rx_data_by_frames(tb, write_tx_frames, num_packets)
    await recv_mem_write_cmd_data(tb, num_packets)
    # get ack
    write_ack_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send ack
    await send_rx_data_by_frames(tb, write_ack_frames, num_packets)
    # get cqe
    await recv_cqe(tb, 1)
    await Timer(1000, 'ns')


async def process_read(tb, wr_id, qpn, host, laddr, raddr, len, rkey, lkey):
    print("        开始处理读请求...")
    num_packets = (len + PMTU - 1) // PMTU
    num_page = (len + page - 1) // page
    # sq_meta
    if (num_page > 1):
        for i in range(num_page-1):
            await send_sq_meta(tb, opcode=RC_RDMA_READ_REQUEST, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=i, laddr=laddr, raddr=raddr, rlength=page, llength=page, rkey=rkey, lkey=lkey, immdt=0)
        await send_sq_meta(tb, opcode=RC_RDMA_READ_REQUEST, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=num_page-1, laddr=laddr, raddr=raddr, rlength=((len+page-1)%page+1), llength=((len+page-1)%page+1), rkey=rkey, lkey=lkey, immdt=0)
    else:
        await send_sq_meta(tb, opcode=RC_RDMA_READ_REQUEST, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr, raddr=raddr, rlength=len, llength=len, rkey=rkey, lkey=lkey, immdt=0)
    # get read request
    sq_tx_frames = await recv_tx_data_frame(tb, 1)
    # send read request
    await send_rx_data_by_frames(tb, sq_tx_frames, 1)
    await Timer(500, 'ns')
    # get read data
    mem_read_cmds = await recv_mem_read_cmd(tb, num_packets)
    await send_rx_data_by_memcmd(tb, mem_read_cmds)
    await Timer(1000, 'ns')
    # # get read packets
    ReadResponse_tx_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send read response
    await send_rx_data_by_frames(tb, ReadResponse_tx_frames, num_packets)
    await recv_mem_write_cmd_data(tb, num_packets)
    # get cqe
    await recv_cqe(tb, 1)
    await Timer(1000, 'ns')


async def process_send(tb, wr_id, qpn, host, laddr, raddr, len, rkey, lkey, immdt=0):
    print("        开始处理发送请求...")
    num_packets = (len + PMTU - 1) // PMTU
    # sq_meta
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_SEND_FIRST, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr, raddr=raddr, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    else:
        await send_sq_meta(tb, opcode=RC_SEND_ONLY, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr, raddr=raddr, rlength=len, llength=len, rkey=rkey, lkey=0, immdt=immdt)
    if (num_packets > 2):
        for i in range(1, num_packets-1):
            await send_sq_meta(tb, opcode=RC_SEND_MIDDLE, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr+PMTU*i, raddr=raddr+PMTU*i, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_SEND_LAST, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr+PMTU*(num_packets-1), raddr=raddr+PMTU*(num_packets-1), rlength=((len+PMTU-1)%PMTU+1), llength=((len+PMTU-1)%PMTU+1), rkey=rkey, lkey=lkey, immdt=immdt)
    # get mem data
    mem_read_cmds = await recv_mem_read_cmd(tb, num_packets)
    await send_rx_data_by_memcmd(tb, mem_read_cmds)
    await Timer(1000, 'ns')
    # get packets
    write_tx_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send packets
    await send_rx_data_by_frames(tb, write_tx_frames, num_packets)
    await recv_mem_write_cmd_data(tb, num_packets)
    # get ack
    write_ack_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send ack
    await send_rx_data_by_frames(tb, write_ack_frames, num_packets)
    # get cqe
    await recv_cqe(tb, 1)
    await Timer(1000, 'ns')

    
async def process_send(tb, wr_id, qpn, host, laddr, raddr, len, rkey, lkey, immdt=0):
    print("        开始处理发送请求...")
    num_packets = (len + PMTU - 1) // PMTU
    # sq_meta
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_SEND_FIRST, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr, raddr=raddr, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    else:
        await send_sq_meta(tb, opcode=RC_SEND_ONLY, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr, raddr=raddr, rlength=len, llength=len, rkey=rkey, lkey=0, immdt=immdt)
    if (num_packets > 2):
        for i in range(1, num_packets-1):
            await send_sq_meta(tb, opcode=RC_SEND_MIDDLE, wr_id=wr_id, qpn=qpn, host=host, lst=0, offs=0, laddr=laddr+PMTU*i, raddr=raddr+PMTU*i, rlength=PMTU, llength=PMTU, rkey=rkey, lkey=lkey, immdt=immdt)
    if (num_packets > 1):
        await send_sq_meta(tb, opcode=RC_SEND_LAST, wr_id=wr_id, qpn=qpn, host=host, lst=1, offs=0, laddr=laddr+PMTU*(num_packets-1), raddr=raddr+PMTU*(num_packets-1), rlength=((len+PMTU-1)%PMTU+1), llength=((len+PMTU-1)%PMTU+1), rkey=rkey, lkey=lkey, immdt=immdt)
    # get mem data
    mem_read_cmds = await recv_mem_read_cmd(tb, num_packets)
    await send_rx_data_by_memcmd(tb, mem_read_cmds)
    await Timer(1000, 'ns')
    # get packets
    write_tx_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send packets
    await send_rx_data_by_frames(tb, write_tx_frames, num_packets)
    await recv_mem_write_cmd_data(tb, num_packets)
    # get ack
    write_ack_frames = await recv_tx_data_frame(tb, num_packets)
    await Timer(1000, 'ns')
    # send ack
    await send_rx_data_by_frames(tb, write_ack_frames, num_packets)
    # get cqe
    await recv_cqe(tb, 1)
    await Timer(1000, 'ns')


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

    await cocotb.start(tb.get_m_axis_rx_ack_meta())

    PMTU = 4096
    await set_ip_address(tb, 0x112233445566778899aabbccdd)
    await qp_interface(tb, state=2, qpn=2, rpsn=0xac701e, lpsn=0x2a19d6, cq_id=1)#, cq_depth=512, cqe_size=32, cq_paddr=0x0102030405060701)#, vaddr=0x111, rkey=0x222)
    await qp_interface(tb, state=2, qpn=5, rpsn=0x2a19d6, lpsn=0xac701e, cq_id=2)#, cq_depth=512, cqe_size=32, cq_paddr=0x0908070605040302)#, vaddr=0x111, rkey=0x222)

    await cq_interface(tb, cq_id=1, cq_depth=512, cqe_size=32, cq_paddr=0x0102030405060701)
    await cq_interface(tb, cq_id=2, cq_depth=512, cqe_size=32, cq_paddr=0x0908070605040302)

    await conn_interface(tb, qpn=2, rqpn=5, rIPAddr=0x6789abcdef0123456789abcdef0, rUDPPort=0x1234)
    await conn_interface(tb, qpn=5, rqpn=2, rIPAddr=0xabcdef0123456789abcdef06789, rUDPPort=0x4321)

    await mr_register(tb, localAddr=0x1222222222222222, length=4096*1024, rkey=0x05002456)
    await mr_register(tb, localAddr=0x0123456789abcdef, length=4096*1024, rkey=0x03000027)

    await Timer(500, 'ns')

    laddr = 0x1222222222222222
    raddr = 0x0123456789abcdef
    rkey_qp2 = 0x03000027
    rkey_qp5 = 0x05002456
    lkey_qp2 = 0x05002456
    lkey_qp5 = 0x03000027

    # Read Request
    await process_read(tb, wr_id=1, qpn=2, host=0, laddr=laddr+PMTU*0, raddr=raddr+PMTU*0, len=PMTU*4, rkey=rkey_qp2, lkey=lkey_qp2)    
    await Timer(1000, 'ns')
    
    # Write
    await process_write(tb, wr_id=2, qpn=2, host=0, laddr=laddr+PMTU*4, raddr=raddr+PMTU*4, len=PMTU*5+75, rkey=rkey_qp2, lkey=lkey_qp2)
    await Timer(1000, 'ns')

    # # Send
    # await process_send(tb, wr_id=3, qpn=2, host=0, laddr=laddr+PMTU*9+75, raddr=raddr+PMTU*9+75, len=PMTU*6, rkey=rkey_qp2, lkey=lkey_qp2)
    # await Timer(1000, 'ns')

    # Write With Immediate
    await process_write_with_immdt(tb, wr_id_write=4, wr_id_receive=3, qpn_write=2, qpn_receive=5, host=0, laddr=laddr+PMTU*33, raddr=raddr+PMTU*33, len=PMTU*5+64, rkey=rkey_qp2, lkey=lkey_qp2, immdt=0x999)
    
    # Write
    await process_write(tb, wr_id=5, qpn=5, host=0, laddr=raddr+PMTU*15+75, raddr=laddr+PMTU*15+75, len=PMTU*3, rkey=rkey_qp5, lkey=lkey_qp5)
    await Timer(1000, 'ns')

    # Read Request
    await process_read(tb, wr_id=6, qpn=2, host=0, laddr=laddr+PMTU*18+75, raddr=raddr+PMTU*18+75, len=PMTU*4, rkey=rkey_qp2, lkey=lkey_qp2) 
    await Timer(1000, 'ns')
    
    # Read Request
    await process_read(tb, wr_id=7, qpn=5, host=0, laddr=raddr+PMTU*22+75, raddr=laddr+PMTU*22+75, len=PMTU*4, rkey=rkey_qp5, lkey=lkey_qp5) 
    await Timer(1000, 'ns')

    # Write With Immediate
    await process_write_with_immdt(tb, wr_id_write=9, wr_id_receive=8, qpn_write=2, qpn_receive=5, host=0, laddr=laddr+PMTU*33, raddr=raddr+PMTU*33, len=PMTU*5+64, rkey=rkey_qp2, lkey=lkey_qp2, immdt=0x888)
    
    
    await Timer(5000, 'ns')
    
    tb.print_tx_packets()
    print("")
    tb.print_rx_packets()
    print("")
    tb.print_memreadcmd()
    print("")
    tb.print_memwritecmd()
    print("")
    tb.print_ackmetas()

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

# def test_rocev2_top_read(request):
def test_rocev2_top(request):
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