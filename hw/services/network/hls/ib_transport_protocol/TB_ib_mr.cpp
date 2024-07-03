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
#include "ib_mr.hpp"
#include <iostream>

int main()
{

//	static stream<retransRelease>	rx2retrans_release_upd("rx2retrans_release_upd");
//	static stream<retransmission> rx2retrans_req("rx2retrans_req");
//	static stream<retransmission> timer2retrans_req("timer2retrans_req");
//	static stream<retransEntry>	tx2retrans_insertRequest("tx2retrans_insertRequest");
//	static stream<event>			retrans2event("retrans2event");
	// void ib_mr(
    // stream<mem_register>&       mr_register,
    // stream<mem_cmp_req>&        rx_mr_query,
    // stream<mem_cmp_resp>&       rx_mr_query_rsp
	// )
	static stream<mem_register> mr_reg("mr_reg");
	static stream<mem_cmp_req> rx_mr_query("rx_mr_query");
    static stream<mem_cmp_resp> rx_mr_query_rsp("rx_mr_query_rsp");
	static stream<mem_cmp_req> tx_mr_query("tx_mr_query");
    static stream<mem_cmp_resp> tx_mr_query_rsp("tx_mr_query_rsp");
	
	int count = 0;
	while (count < 20)
	{
		if(count == 1)
		{
			mr_reg.write(mem_register(0x10, 20, 0x02ffffff));
		}
		if (count == 5)
		{
			rx_mr_query.write(mem_cmp_req(0x10, 30, 0x02ffffff));
		}
		if(count == 8)
		{
			rx_mr_query.write(mem_cmp_req(0x10, 10, 0x02ffffff));
		}

		if(count == 11)
		{
			rx_mr_query.write(mem_cmp_req(0x20, 30, 0x02ffffff));
		}


		ib_mr(
			mr_reg,
			tx_mr_query,
			tx_mr_query_rsp,
			rx_mr_query,
			rx_mr_query_rsp
		);

		count++;
		std:: cout << "count:" << count << std::endl << std::endl;;
	}

	mem_cmp_resp rsp;
	while(!rx_mr_query_rsp.empty())
	{
		rx_mr_query_rsp.read(rsp);
		std::cout << "get message" << std::endl;
		std::cout << "get:\t" << rsp.isvalid << std::endl;
		// std::cout << "Retransmission of qp " << ev.qpn << ", addr: " << ev.addr << ", len: " << ev.length << std::endl;
	}
	return 0;
}
