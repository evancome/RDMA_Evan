import itertools
import logging
import os
import random
from enum import Enum
import cocotb_test.simulator

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge
from cocotb.regression import TestFactory

from cocotbext.axi import AxiStreamBus, AxiStreamFrame, AxiStreamSource, AxiStreamSink, AxiStreamMonitor



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
PMTU = 1408
PMTU_WSIZE_noheader = PMTU // 64
PMTU_WSIZE_hasheader = (PMTU // 64) + 1
WIDTH = 512
WORD_SIZE = WIDTH // 8
WIDTH_KEEP = WORD_SIZE // 8
UDP_SIZE = 8
BTH_SIZE = 12
RETH_SIZE = 16
AETH_SIZE = 4
CRC_SIZE = 4
PrintWord = 0
wrOpCode = {1: "RC_SEND", 2: "RC_WRITE", 3: "RC_READ", 4: "RC_RECEIVE"}


def getOp(code):
    if (code == RC_SEND_FIRST):
        return "RC_SEND_FIRST"
    elif (code == RC_SEND_MIDDLE):
        return "RC_SEND_MIDDLE"
    elif (code == RC_SEND_LAST):
        return "RC_SEND_LAST"
    elif (code == RC_SEND_LAST_WITH_IMD):
        return "RC_SEND_LAST_WITH_IMD"
    elif (code == RC_SEND_ONLY):
        return "RC_SEND_ONLY"
    elif (code == RC_SEND_ONLY_WITH_IMD):
        return "RC_SEND_ONLY_WITH_IMD"
    elif (code == RC_RDMA_WRITE_FIRST):
        return "RC_RDMA_WRITE_FIRST"
    elif (code == RC_RDMA_WRITE_MIDDLE):
        return "RC_RDMA_WRITE_MIDDLE"
    elif (code == RC_RDMA_WRITE_LAST):
        return "RC_RDMA_WRITE_LAST"
    elif (code == RC_RDMA_WRITE_LAST_WITH_IMD):
        return "RC_RDMA_WRITE_LAST_WITH_IMD"
    elif (code == RC_RDMA_WRITE_ONLY):
        return "RC_RDMA_WRITE_ONLY"
    elif (code == RC_RDMA_WRITE_ONLY_WIT_IMD):
        return "RC_RDMA_WRITE_ONLY_WIT_IMD"
    elif (code == RC_RDMA_READ_REQUEST):
        return "RC_RDMA_READ_REQUEST"
    elif (code == RC_RDMA_READ_RESP_FIRST):
        return "RC_RDMA_READ_RESP_FIRST"
    elif (code == RC_RDMA_READ_RESP_MIDDLE):
        return "RC_RDMA_READ_RESP_MIDDLE"
    elif (code == RC_RDMA_READ_RESP_LAST):
        return "RC_RDMA_READ_RESP_LAST"
    elif (code == RC_RDMA_READ_RESP_ONLY):
        return "RC_RDMA_READ_RESP_ONLY"
    elif (code == RC_ACK):
        return "RC_ACK"
    
def checkIfResponse(code):
	return (code == RC_RDMA_READ_RESP_FIRST or code == RC_RDMA_READ_RESP_MIDDLE or
			code == RC_RDMA_READ_RESP_LAST  or code == RC_RDMA_READ_RESP_ONLY or
			code == RC_ACK)

def checkIfWrite(code):
	return (code == RC_RDMA_WRITE_FIRST or code == RC_RDMA_WRITE_MIDDLE or
			code == RC_RDMA_WRITE_LAST  or code == RC_RDMA_WRITE_ONLY)

def checkIfAethHeader(code):
	return (code == RC_RDMA_READ_RESP_ONLY or code == RC_RDMA_READ_RESP_FIRST or
			code == RC_RDMA_READ_RESP_LAST or code == RC_ACK)

def  checkIfRethHeader(code):
    return (code == RC_RDMA_WRITE_ONLY  or code == RC_RDMA_WRITE_FIRST or code == RC_RDMA_READ_REQUEST)


# offs_CQE = {"cq_id": 32, "wr_id": 64, "status": 96, "opcode": 128, "byte_len": 160, "qpn": 170, "src_qp": 180}
# offs_CQE = {"wr_id": 16, "status": 48, "opcode": 50, "byte_len": 82, "qpn": 92, "src_qp": 116, "cq_paddr": 180}

offs_CQE = {"wr_id": 16, "status": 48, "ImmDt": 80,"opcode": 83, "byte_len": 115, "qpn": 125, "src_qp": 149, "cq_paddr": 213}

bits = {"CQE": 216}

# cq_id, wr_id, status, wrOpCode, byte_len, qpn, src_qp
class CQE(object):
    def __init__(self, data):
        # TODO 位次应该是有问题的，需要修改
        binary_data = bin(int.from_bytes(data, byteorder='little'))[2:]
        if (len(binary_data) < bits["CQE"]):
            binary_data = '0' * (46 - len(binary_data)) + binary_data
        print(binary_data)
        # self.cq_id  = int(binary_data[-offs_CQE["cq_id"]:], 2)
        # self.wr_id  = int(binary_data[-offs_CQE["wr_id"]:-offs_CQE["cq_id"]], 2)
        # self.status = int(binary_data[-offs_CQE["status"]: -offs_CQE["wr_id"]], 2)
        # self.opcode = int(binary_data[-offs_CQE["opcode"]: -offs_CQE["status"]], 2)
        # self.byte_len = int(binary_data[-offs_CQE["byte_len"]: -offs_CQE["opcode"]], 2)
        # self.qpn      = int(binary_data[-offs_CQE["qpn"]: -offs_CQE["byte_len"]], 2)
        # self.src_qp   = int(binary_data[-offs_CQE["src_qp"]:-offs_CQE["qpn"]], 2)
        self.wr_id  = int(binary_data[-offs_CQE["wr_id"]:], 2)
        self.status = int(binary_data[-offs_CQE["status"]: -offs_CQE["wr_id"]], 2)
        self.immdt  = int(binary_data[-offs_CQE["ImmDt"]: -offs_CQE["status"]], 2)
        self.opcode = int(binary_data[-offs_CQE["opcode"]: -offs_CQE["ImmDt"]], 2)
        self.byte_len = int(binary_data[-offs_CQE["byte_len"]: -offs_CQE["opcode"]], 2)
        self.qpn      = int(binary_data[-offs_CQE["qpn"]: -offs_CQE["byte_len"]], 2)
        self.src_qp   = int(binary_data[-offs_CQE["src_qp"]:-offs_CQE["qpn"]], 2)
        self.cq_paddr = int(binary_data[-offs_CQE["cq_paddr"]:-offs_CQE["src_qp"]], 2)

    def print_CQE(self, idx):
        print("    CQE: ", idx)
        print("        wr_id: ", self.wr_id)
        print("        status: ", self.status)
        print("        immdt: ", hex(self.immdt))
        print("        opcode: ", wrOpCode[self.opcode])
        print("        byte_len: ", hex(self.byte_len))
        print("        qpn: ", self.qpn)
        print("        src_qp: ", self.src_qp)
        print("        cq_paddr: ", hex(self.cq_paddr))


class BaseTransportHeader(object):
    def __init__(self, word):
        # print("BTH word: ", word)
        # def setAckReq(self, bit):
        # 	header[71] = bit
        data = word.data[2:]
        if (len(data) != BTH_SIZE*2):
            data = '0'*(BTH_SIZE*2-len(data)) + data
        data = data[-24:]
        # print("BTH data: ", data)
        # 从16进制的字符串中获取数字，并用小端显示
        self.OpCode = int.from_bytes(bytes.fromhex(data[-2:]), byteorder='little')
        self.PartitionKey = int.from_bytes(bytes.fromhex(data[-8:-4]), byteorder='little')
        self.DestQP = int.from_bytes(bytes.fromhex(data[-16:-10]), byteorder='little')
        self.PSN = int.from_bytes(bytes.fromhex(data[-24:-18]), byteorder='little')
        data65_72 = bin(int.from_bytes(bytes.fromhex(data[-18:-16]),  byteorder='little'))[2:]
        self.AckReq = int(data65_72[0], 2)
        # TODO 之后确定位置后再加
        # self.PadCount = int(data[-14:-12], 2)
        # self.SolicitedEvent = 
        # self.MigReq = 


    def print_BTH(self):
        print("    BTH: ")
        print("      OpCode: ", hex(self.OpCode), getOp(self.OpCode))
        print("      PartitionKey: ", hex(self.PartitionKey))
        print("      DestQP: ", self.DestQP)
        print("      PSN: ", self.PSN)
        print("      AckReq: ", self.AckReq)
        # print("PadCount: ", self.PadCount)

    def get_OpCode(self):
        return self.OpCode
    
    def get_PartitionKey(self):
        return self.PartitionKey

    def get_DestQP(self):
        return self.DestQP
    
    def get_PSN(self):
        return self.PSN
    
    def set_OpCode(self, opcode):
        self.OpCode = opcode

    def set_PartitionKey(self, partition_key):
        self.PartitionKey = partition_key

    def set_DestQP(self, dest_qp):
        self.DestQP = dest_qp

    def set_PSN(self, psn):
        self.PSN = psn
    
    # def to_bytes(self):
    #     return self.OpCode.to_bytes(4, byteorder='little') + self.PartitionKey.to_bytes(8, byteorder='little') + self.DestQP.to_bytes(8, byteorder='little') + self.PSN.to_bytes(8, byteorder='little')
    
	# def setSolicitedEvent(self, bit):
	# 	header[15] = bit
	# def setMigReq(self, bit):
	# 	header[14] = bit
	# def setPadCount(self, pad_count):
	# 	header(13, 12) = pad_count
	# def setHeaderVersion(self, header_version):
	# 	header(11, 8) = header_version
#     class RdmaExHeader : public packetHeader<W, RETH_SIZE>//RETH
# {
# 	using packetHeader<W, RETH_SIZE>::header;

# public:
# 	RdmaExHeader() {}

# 	void setVirtualAddress(ap_uint<64> addr) //TODO & or not??
# 	{
# 		header(63, 0) = reverse(addr); //TODO or reverseByte
# 	}
# 	ap_uint<64> getVirtualAddress()
# 	{
# 		return reverse((ap_uint<64>) header(63, 0));
# 	}
# 	void setRemoteKey(ap_uint<32> key)
# 	{
# 		header(95, 64) = reverse(key);
# 	}
# 	ap_uint<32> getRemoteKey()
# 	{
# 		return reverse((ap_uint<32>) header(95,64));
# 	}
# 	void setLength(ap_uint<32> len)
# 	{
# 		header(127,96) = reverse(len);
# 	}
# 	ap_uint<32> getLength()
# 	{
# 		return reverse((ap_uint<32>) header(127,96));
# 	}
# };
class RdmaExHeader(object):
    def __init__(self, word):
        # TODO 增加对OpCode的判断
        data = word.data[2:-24]
        if (len(data) != RETH_SIZE*2):
            data = '0'*(RETH_SIZE*2-len(data)) + data
        data = data[-32:]
        # print("RETH data: ", data)
        # 从16进制的字符串中获取数字，并用小端显示
        self.VirtualAddr = int.from_bytes(bytes.fromhex(data[-16:]), byteorder='little')
        self.RemoteKey = int.from_bytes(bytes.fromhex(data[-24:-16]), byteorder='little')
        self.DMALength = int.from_bytes(bytes.fromhex(data[-32:-24]), byteorder='little')


    def print_RETH(self):
        print("    RETH:")
        print("      VirtualAddr:", hex(self.VirtualAddr))
        print("      RemoteKey:", hex(self.RemoteKey))
        print("      DMALength:", self.DMALength)

    def get_VirtualAddr(self):
        return self.VirtualAddr

    def get_RemoteKey(self):
        return self.RemoteKey

    def get_DMALength(self):
        return self.DMALength

    def set_VirtualAddr(self, addr):
        self.VirtualAddr = addr

    def set_RemoteKey(self, key):
        self.RemoteKey = key

    def set_DMALength(self, len):
        self.DMALength = len

    def to_bytes(self):
        return self.VirtualAddr.to_bytes(8, byteorder='little') + self.RemoteKey.to_bytes(4, byteorder='little') + self.DMALength.to_bytes(4, byteorder='little')

# class AckExHeader : public packetHeader<W, AETH_SIZE> //AETH
# {
# 	using packetHeader<W, AETH_SIZE>::header;

# public:
# 	AckExHeader() {}

# 	void setSyndrome(ap_uint<8> syn)
# 	{
# 		header(7, 0) = syn;
# 	}
# 	ap_uint<8> getSyndrome()
# 	{
# 		return ((ap_uint<8>) header(7, 0));
# 	}
# 	void setMsn(ap_uint<24> msn)
# 	{
# 		header(31, 8) = reverse(msn);
# 	}
# 	ap_uint<24> getMsn()
# 	{
# 		return reverse((ap_uint<24>) header(31, 8));
# 	}
# 	bool isNAK()
# 	{
# 		return (header(6,5) == 0x3);
# 	}
# };
    
class AckExHeader(object):
    def __init__(self, word):
        # TODO 增加对OpCode的判断
        data = word.data[2:-24]
        if (len(data) != AETH_SIZE*2):
            data = '0'*(AETH_SIZE*2-len(data)) + data
        data = data[-8:]
        # print("AETH data: ", data)
        # 从16进制的字符串中获取数字，并用小端显示
        self.Syndrome = int.from_bytes(bytes.fromhex(data[-2:]), byteorder='little')
        self.MSN = int.from_bytes(bytes.fromhex(data[:-2]), byteorder='little')

    def print_AETH(self):
        print("    AETH:")
        print("      Syndrome: ", hex(self.Syndrome))
        print("      MSN: ", self.MSN)

    def get_Syndrome(self):
        return self.Syndrome

    def get_MSN(self):
        return self.MSN
    
    def set_Syndrome(self, syndrome):
        self.Syndrome = syndrome

    def set_MSN(self, msn):
        self.MSN = msn

    
class Packet(object):
    def __init__(self, word=None):
        self.words = []
        if (word != None):
            self.words.append(word)
            self.BTH = BaseTransportHeader(word)
            if (checkIfRethHeader(self.BTH.get_OpCode())):
                self.RETH = RdmaExHeader(word)
                self.ExHeader = 0 # ExHeader == 0 时为RETH，ExHeader == 1 时为AETH
            elif (checkIfAethHeader(self.BTH.get_OpCode())):
                self.AETH = AckExHeader(word)
                self.ExHeader = 1
            else:
                self.ExHeader = -1
        else:
            self.BTH = None
    
    def append_word(self, word):
        if (len(self.words) == 0):
            self.BTH = BaseTransportHeader(word)
            if (checkIfRethHeader(self.BTH.get_OpCode())):
                self.RETH = RdmaExHeader(word)
                self.ExHeader = 0 # ExHeader == 0 时为RETH，ExHeader == 1 时为AETH
            elif (checkIfAethHeader(self.BTH.get_OpCode())):
                self.AETH = AckExHeader(word)
                self.ExHeader = 1
            else:
                self.ExHeader = -1
        self.words.append(word)

    def getflag(self):
        l = len(self.words)
        if (self.words[l-1].last == 1):
            return 1
        else:
            return 0
        
    def print_Packet(self, idx=0):
        print("")
        print("  Packet:", idx)
        self.print_BTH()
        if (self.ExHeader == 1):
            self.AETH.print_AETH()
        elif (self.ExHeader == 0):
            self.RETH.print_RETH()

        if (PrintWord):
            l = len(self.words)
            for i in range(l):
                self.words[i].print_Word(i+1)

    def get_BTH(self):
        return self.BTH
    
    def print_BTH(self):
        if (self.BTH != None):
            self.BTH.print_BTH()
    
    def get_RETH(self):
        return self.RETH
    
    def get_bytes_packet(self):
        bytes_packet = ''
        for word in self.words:
            bytes_packet += word.data.to_bytes(64, byteorder='little')
        return bytes_packet
    

class Word(object):

    def __init__(self, word, type=0, keep=0, last=0):
        # type == 0时，是1024bit输入；type == 1时，是Word深拷贝；type == 2时，给出data、keep、last
        if (type == 0):
            integer = int(word, 16)
            binary_str = bin(integer)[2:]
            data = binary_str[-512:]

            if (len(binary_str) <= 512+64):
                last = "0"
                keep = binary_str[:-512]
            else:
                last = binary_str[-(512+65)]
                keep = binary_str[-(512+64):-512]

            self.data = hex(int(data, 2))
            # print("创建Word，data=", self.data)
            self.keep = hex(int(keep, 2))
            # print("创建Word，keep=", self.keep)
            self.last = (int(last, 2)) # hex(int(last, 2))
            # print("创建Word，last=", self.last)
        elif (type == 1):
            self.data = word.data
            self.keep = word.keep
            self.last = word.last
        elif (type == 2):
            self.data = word
            self.keep = keep
            self.last = last

    def print_Word(self, idx=0):
        print("  Word: ", idx)
        print("    输出Word，data=", self.data)
        print("    输出Word，keep=", self.keep)
        print("    输出Word，last=", self.last)


    # /* Mem command */
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
class MemCmd(object):
    def __init__(self, data):
        self.addr = int.from_bytes(data[:6], byteorder='little')
        print(data)
        # TODO 位次应该是有问题的，需要修改
        binary_data = bin(int.from_bytes(data[6:], byteorder='little'))[2:]
        if (len(binary_data) < 46):
            binary_data = '0' * (46 - len(binary_data)) + binary_data
        print(binary_data)
        self.len = int(binary_data[-28:], 2)
        self.ctl = int(binary_data[-29], 2)
        self.strm = int(binary_data[-30], 2)
        self.sync = int(binary_data[-31], 2)
        self.host = int(binary_data[-32], 2)
        self.tdst = int(binary_data[-36:-32], 2)
        self.pid = int(binary_data[-42:-36], 2)
        self.vfid = int(binary_data[-46:-42], 2)

    def print_MemCmd(self, idx=0):
        print("  MemCmd: ", idx)
        print("    addr: 0x%x" % self.addr)
        print("    len: ", self.len)
        print("    ctl: 0x%x" % self.ctl)
        print("    strm: 0x%x" % self.strm)
        print("    sync: 0x%x" % self.sync)
        print("    host: 0x%x" % self.host)
        print("    tdst: 0x%x" % self.tdst)
        print("    pid: 0x%x" % self.pid)
        print("    vfid: 0x%x" % self.vfid)

    def get_len(self):
        return self.len

# struct ipUdpMeta
# {
# 	ap_uint<128> their_address;
# 	ap_uint<16> their_port;
# 	ap_uint<16> my_port;
# 	ap_uint<16>	length;
# 	ipUdpMeta() {}
# 	ipUdpMeta(ap_uint<128> addr, ap_uint<16> tport, ap_uint<16> mport, ap_uint<16> len)
# 		:their_address(addr), their_port(tport), my_port(mport), length(len) {}
# };
class ipUdpMeta(object):
    def __init__(self, data):
        binary_data = bin(int.from_bytes(data, byteorder='little'))[2:]
        if (len(binary_data) < 256):
            binary_data = '0' * (256 - len(binary_data)) + binary_data
        self.taddr = int(binary_data[-128:], 2)
        self.tport = int(binary_data[-(128+16):-128], 2)
        self.mport = int(binary_data[-(128+32):-(128+16)], 2)
        self.len = int(binary_data[-(128+32+16):-(128+32)], 2)

    def print_ipUdpMeta(self, idx=0):
        print("")
        print("  ipUdpMeta: ", idx)
        print("    their_address: 0x%x" % self.taddr)
        print("    their_port: 0x%x" % self.tport)
        print("    my_port: 0x%x" % self.mport)
        print("    length: 0x%x" % self.len)

class TB(object):
    def __init__(self, dut):
        self.dut = dut
        self.ib_tx_metas = []
        self.ib_rx_metas = []
        self.ib_tx_words = []
        self.ib_rx_words = []
        self.ib_tx_packets = []
        self.ib_rx_packets = []
        self.mem_read_cmds = []
        self.mem_write_cmds = []
        self.ack_metas = []
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        cocotb.start_soon(Clock(dut.clk, 4, units="ns").start())
        
        self.rx_data_source                 = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_rx_data"), dut.clk, dut.rst)
        self.tx_data_sink                   = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_tx_data"), dut.clk, dut.rst)
        self.sq_meta_source                 = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_sq_meta"), dut.clk, dut.rst)
        self.sq_transaction_meta_source     = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_sq_transaction_meta"), dut.clk, dut.rst)
        self.rx_ack_meta_sink               = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_rx_ack_meta"), dut.clk, dut.rst)
        self.mem_write_cmd_sink             = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_mem_write_cmd"), dut.clk, dut.rst)
        self.mem_read_cmd_sink              = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_mem_read_cmd"), dut.clk, dut.rst)
        self.mem_write_data_sink            = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_mem_write_data"), dut.clk, dut.rst)
        self.mem_read_data_source           = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_mem_read_data"), dut.clk, dut.rst)
        self.qp_interface_source            = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_qp_interface"), dut.clk, dut.rst)
        self.cq_interface_source            = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_cq_interface"), dut.clk, dut.rst)
        self.qp_conn_interface_source       = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_qp_conn_interface"), dut.clk, dut.rst)
    
    def set_idle_generator(self, generator=None):
        if generator:
            self.sq_meta_source.set_pause_generator(generator())

    async def reset(self):
        self.dut.rst.setimmediatevalue(0)
        await RisingEdge(self.dut.clk)
        await RisingEdge(self.dut.clk)
        self.dut.rst.value = 1
        await RisingEdge(self.dut.clk)
        await RisingEdge(self.dut.clk)
        self.dut.rst.value = 0
        await RisingEdge(self.dut.clk)
        await RisingEdge(self.dut.clk)
        # await RisingEdge(self.dut.clk) # If you have one more delay, you can see the effect comparison. 
        # self.dut.start.value = 1 # Set the "start" signal to 1 to start sending test data to the module. ↑

    async def get_tx_ib2udpFifo_din(self):
        while True:
            await RisingEdge(self.dut.clk)
            write = self.dut.rocev2_top_inst.prepend_ibh_header_512_0_U0.tx_ib2udpFifo_write.value
            if (write == 1):
                m_aixs_tx_data = self.dut.rocev2_top_inst.prepend_ibh_header_512_0_U0.tx_ib2udpFifo_din
                m_aixs_tx_data = int(str(m_aixs_tx_data), 2)
                m_aixs_tx_data = hex(m_aixs_tx_data)
                
                # print("传输一个WORD", m_aixs_tx_data)
                # self.log.info("传输一个WORD", m_aixs_tx_data)
                self.ib_tx_words.append(Word(m_aixs_tx_data, 0))

    async def get_rx_udp2ibFifo_dout(self):
        while True:
            await RisingEdge(self.dut.clk)
            read = self.dut.rocev2_top_inst.rx_process_ibh_512_0_U0.rx_udp2ibFifo_read.value
            if (read == 1):
                s_aixs_rx_data = self.dut.rocev2_top_inst.rx_process_ibh_512_0_U0.rx_udp2ibFifo_dout
                s_aixs_rx_data = int(str(s_aixs_rx_data), 2)
                s_aixs_rx_data = hex(s_aixs_rx_data)
                
                self.ib_rx_words.append(Word(s_aixs_rx_data, 0))


    async def get_rx_ipUdpMetaFifo_dout(self):
        while True:
            await RisingEdge(self.dut.clk)
            read = self.dut.rocev2_top_inst.ipUdpMetaHandler_512_0_U0.rx_ipUdpMetaFifo_read.value
            if (read == 1):
                s_aixs_rx_meta = self.dut.rocev2_top_inst.ipUdpMetaHandler_512_0_U0.rx_ipUdpMetaFifo_dout
                s_aixs_rx_meta = int(str(s_aixs_rx_meta), 2)
                s_aixs_rx_meta = s_aixs_rx_meta.to_bytes(32, byteorder='little')
                
                self.ib_rx_metas.append(ipUdpMeta(s_aixs_rx_meta))

    async def get_tx_ipUdpMetaFifo_din(self):
        while True:
            await RisingEdge(self.dut.clk)
            write = self.dut.rocev2_top_inst.tx_ipUdpMetaMerger_0_U0.tx_ipUdpMetaFifo_write.value
            if (write == 1):
                m_aixs_tx_meta = self.dut.rocev2_top_inst.tx_ipUdpMetaMerger_0_U0.tx_ipUdpMetaFifo_din
                m_aixs_tx_meta = int(str(m_aixs_tx_meta), 2)
                m_aixs_tx_meta = m_aixs_tx_meta.to_bytes(32, byteorder='little')
                
                self.ib_tx_metas.append(ipUdpMeta(m_aixs_tx_meta))


    async def get_m_axis_mem_read_cmd(self):
        while True:
            await RisingEdge(self.dut.clk)
            ready = self.dut.m_axis_mem_read_cmd_tready.value
            valid = self.dut.m_axis_mem_read_cmd_tvalid.value
            if (ready == 1 and valid == 1):
                memcmd_tdata = self.dut.m_axis_mem_read_cmd_tdata.value
                memcmd_tdata = int(str(memcmd_tdata), 2)
                memcmd_tdata = memcmd_tdata.to_bytes(12, byteorder='little')
                self.mem_read_cmds.append(MemCmd(memcmd_tdata))
    
    async def get_m_axis_mem_write_cmd(self):
        while True:
            await RisingEdge(self.dut.clk)
            ready = self.dut.m_axis_mem_write_cmd_tready.value
            valid = self.dut.m_axis_mem_write_cmd_tvalid.value
            if (ready == 1 and valid == 1):
                memcmd_tdata = self.dut.m_axis_mem_write_cmd_tdata.value
                memcmd_tdata = int(str(memcmd_tdata), 2)
                memcmd_tdata = memcmd_tdata.to_bytes(12, byteorder='little')
                self.mem_write_cmds.append(MemCmd(memcmd_tdata))

    async def get_m_axis_rx_ack_meta(self):
        while True:
            await RisingEdge(self.dut.clk)
            ready = self.dut.m_axis_rx_ack_meta_tready.value
            valid = self.dut.m_axis_rx_ack_meta_tvalid.value
            if (ready == 1 and valid == 1):
                ack_meta = self.dut.m_axis_rx_ack_meta_tdata.value
                ack_meta = int(str(ack_meta), 2)
                # ack_meta = ack_meta.to_bytes(23, byteorder='little')
                ack_meta = ack_meta.to_bytes(29, byteorder='little')
                self.ack_metas.append(CQE(ack_meta))

    
    def print_tx_packets(self):
        if (PrintWord):
            print("TX WORDS: ")
        flag = 1
        numWords = len(self.ib_tx_words)
        for i in range(numWords):
            word = self.ib_tx_words[i]

            if (PrintWord):
                word.print_Word(i+1)

            if (flag == 1):
                self.ib_tx_packets.append(Packet(word))
                if (word.last == 0):
                    flag = 0
            else:
                self.ib_tx_packets[len(self.ib_tx_packets)-1].append_word(word)
                if (word.last == 1):
                    flag = 1
        print("")
        print("TX Packet: ")
        numPackets = len(self.ib_tx_packets)
        for i in range(numPackets):
            self.ib_tx_metas[i].print_ipUdpMeta(i+1)
            self.ib_tx_packets[i].print_Packet(i+1)

    def print_rx_packets(self):
        if (PrintWord):
            print("RX WORDS: ")
        flag = 1
        numWords = len(self.ib_rx_words)
        for i in range(numWords):
            word = self.ib_rx_words[i]
            if (PrintWord):
                word.print_Word(i+1)
            if (flag == 1):
                self.ib_rx_packets.append(Packet(word))
                if (word.last == 0):
                    flag = 0
            else:
                self.ib_rx_packets[len(self.ib_rx_packets)-1].append_word(word)
                if (word.last == 1):
                    flag = 1
        print("")
        print("RX Packet: ")
        numPackets = len(self.ib_rx_packets)
        for i in range(numPackets):
            self.ib_rx_packets[i].print_Packet(i+1)

    def print_tx_metas(self):
        print("TX Meta: ")
        for i in range(len(self.ib_tx_metas)):
            self.ib_tx_metas[i].print_ipUdpMeta(i+1)

    def print_rx_metas(self):
        print("RX Meta: ")
        for i in range(len(self.ib_rx_metas)):
            self.ib_rx_metas[i].print_ipUdpMeta(i+1)

    def print_memreadcmd(self):
        print("Memory Read Command: ")
        for i in range(len(self.mem_read_cmds)):
            self.mem_read_cmds[i].print_MemCmd(i+1)

    def print_memwritecmd(self):
        print("Memory Write Command: ")
        for i in range(len(self.mem_write_cmds)):
            self.mem_write_cmds[i].print_MemCmd(i+1)

    def print_ackmetas(self):
        print("ACK Meta: ")
        for i in range(len(self.ack_metas)):
            self.ack_metas[i].print_CQE(i+1)

    def print_all(self):
        self.print_tx_packets()
        print("")
        self.print_rx_packets()
        print("")
        self.print_memreadcmd()
        print("")
        self.print_memwritecmd()
        print("")
        self.print_tx_metas()
        print("")
        self.print_rx_metas()
    

        
class txMeta:
    def __init__(self, wr_id, qpn, host, lst, offs, flag, op_code, r_addr, r_length, r_key, l_addr, l_length, l_key):
        self.wr_id = wr_id
        self.qpn = qpn
        self.host = host
        self.lst = lst
        self.offs = offs
        self.flag = flag
        self.op_code = op_code
        self.r_addr = r_addr
        self.r_length = r_length
        self.r_key = r_key
        self.l_addr = l_addr
        self.l_length = l_length
        self.l_key = l_key

    def __str__(self):
        return f"wr_id: {self.wr_id}, qpn: {self.qpn}, host: {self.host}, lst: {self.lst}, offs: {self.offs}, flag: {self.flag}, op_code: {self.op_code}, r_addr: {self.r_addr}, r_length: {self.r_length}, r_key: {self.r_key}, l_addr: {self.l_addr}, l_length: {self.l_length}, l_key: {self.l_key}"
