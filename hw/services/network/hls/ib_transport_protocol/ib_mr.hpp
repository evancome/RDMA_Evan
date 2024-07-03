/************************************************
Copyright (c) 2019, Systems Group, ETH Zurich.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
************************************************/

#include "../axi_utils.hpp"
// #include "../ib_transport_protocol.hpp"

using namespace hls;

/*
log:
todo fix generate_exh
todo fix rx_exh_fsm
*/
#define MAX_MR 8
//HLS MR

// register, deregister, query, reregister, reregister physical, Register Shared?

struct mem_register
{
    ap_uint<64> localAddr;
    ap_uint<32> length;
    ap_uint<32> r_key;
    mem_register() {};
    mem_register(ap_uint<64> localAddr, ap_uint<32>length, ap_uint<32>r_key)
    	:localAddr(localAddr),length(length),r_key(r_key) {}
};

struct mem_region
{
    ap_uint<64> localAddr;
    ap_uint<32> length;
    ap_uint<32> r_key;
    bool valid;
    mem_region() {};
    mem_region(ap_uint<64> localAddr, ap_uint<32>length, ap_uint<32>r_key)
    	:localAddr(localAddr),length(length),r_key(r_key) {}
    mem_region(mem_register mem_regr, bool isValid)
        :localAddr(mem_regr.localAddr), length(mem_regr.length), r_key(mem_regr.r_key), valid(isValid) {}
};

struct mem_cmp_req
{
    ap_uint<64> localAddr;
    ap_uint<64> length;
    ap_uint<32> r_key;
    // length
    mem_cmp_req() {};
    mem_cmp_req(ap_uint<64> localAddr, ap_uint<64> length)
        :localAddr(localAddr), length(length) {}
    mem_cmp_req(ap_uint<64> localAddr, ap_uint<64> length, ap_uint<32>r_key)
        :localAddr(localAddr), length(length), r_key(r_key) {}

};

struct mem_cmp_resp
{
    bool isvalid;
    mem_cmp_resp() {};
    mem_cmp_resp(bool isvalid)
    	:isvalid(isvalid) {}
};


#define lingbo_debug


void memregion_table(
    stream<mem_region>&         rt_regionIstFifo,
    stream<mem_cmp_req>&        rt_regionReqFifo,
    stream<mem_cmp_resp>&       rt_regionRspFifo
);

// fsm
void mr_ops_fsm(
    stream<mem_register>&       mr_register,
    stream<mem_region>&         rt_regionIstFifo,
    stream<mem_cmp_req>&        rt_regionReqFifo,
    stream<mem_cmp_resp>&       rt_regionRspFifo,
    stream<mem_cmp_req>&        tx_mr_query,
    stream<mem_cmp_resp>&       tx_mr_query_rsp,
    stream<mem_cmp_req>&        rx_mr_query,
    stream<mem_cmp_resp>&       rx_mr_query_rsp
);

void ib_mr(
    stream<mem_register>&       mr_register,
    stream<mem_cmp_req>&        tx_mr_query,
    stream<mem_cmp_resp>&       tx_mr_query_rsp,
    stream<mem_cmp_req>&        rx_mr_query,
    stream<mem_cmp_resp>&       rx_mr_query_rsp
);
