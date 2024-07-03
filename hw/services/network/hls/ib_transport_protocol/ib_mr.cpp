#include "ib_mr.hpp"

#define lingbo_debug


void memregion_table(
    stream<mem_region>&         rt_regionIstFifo,
    stream<mem_cmp_req>&        rt_regionReqFifo,
    stream<mem_cmp_resp>&       rt_regionRspFifo
)
{
#pragma HLS PIPELINE II=1
#pragma HLS INLINE off
    //need lock?
    static mem_region main_mr[MAX_MR] = {}; //MAX_MR?
	#pragma HLS bind_storage variable=main_mr type=RAM_T2P impl=BRAM
	#pragma HLS DEPENDENCE variable=main_mr inter false

    static mem_region regr;
    static mem_cmp_req query;
    static int Idx = 0;
    if(!rt_regionIstFifo.empty())
    {
        rt_regionIstFifo.read(regr);
        std::cout << "[ memregion_table ] The meta include: \tlocalAddr: " << regr.localAddr << "\tlength: " << regr.length << "\tkey: " << regr.r_key << "\tvalid: " << regr.valid << std::endl;
#ifdef lingbo_debug
        std::cout << "[ memregion_table ] take memregion_table -> Ist" << std::endl; 
#endif
        int opt = (int)(regr.r_key >> 24);
        main_mr[opt] = regr; //newMetaIdx?
    }
    else if(!rt_regionReqFifo.empty())
    {
        
        rt_regionReqFifo.read(query);
        int query_rsp[10] = {0};
#ifdef lingbo_debug
        std::cout << "[ memregion_table ] take memregion_table -> Req" << std::endl;
        std::cout << "[ memregion_table ] The meta include: \tlocalAddr: " << query.localAddr << "\tlength: " << query.length << "\tr_key: " << query.r_key << std::endl;
        // std::cout << "cat main_mr[1]:\t" << main_mr[0].r_key << std::endl;
        // std::cout << (bool)(query.r_key == main_mr[0].r_key) << std::endl;
        // printf("query.r_key:\t%08x\n",(unsigned int)query.r_key);
#endif
        // core function 
        int opt = (int)(query.r_key >> 24);
        std::cout << "[ memregion_table ] cmp:\t" << query.r_key << "\t" << main_mr[opt].r_key << std::endl;

#ifdef lingbo_debug
        std::cout << "[ memregion_table ] opt:\t" << opt << std::endl;
        // printf("opt:\t%08x\n",opt);
#endif 
        // std::cout << main_mr[opt].localAddr << "\t" << query.localAddr << std::endl << main_mr[opt].localAddr + main_mr[opt].length << "\t" << query.localAddr + query.length << std::endl;
        // std::cout << "check information" << std::endl << bool((main_mr[opt].localAddr > query.localAddr || main_mr[opt].localAddr + main_mr[opt].length < query.localAddr + query.length)) << std::endl;
        if(!(main_mr[opt].r_key == query.r_key))
        {
            rt_regionRspFifo.write(mem_cmp_resp(0));
            std::cout << "[ memregion_table ] The meta'r_key is not the same" << std::endl;
        }
        else if(main_mr[opt].localAddr > query.localAddr || main_mr[opt].localAddr + main_mr[opt].length < query.localAddr + query.length)
        {
            rt_regionRspFifo.write(mem_cmp_resp(0));
            if (main_mr[opt].localAddr > query.localAddr)
            {
                std::cout << "[ memregion_table ] The meta is not in the range: main_mr[opt].localAddr > query.localAddr" << std::endl;
                std::cout << "[ memregion_table ] The meta is not in the range: main_mr[opt].localAddr: " << main_mr[opt].localAddr << ", query.localAddr: " << query.localAddr << std::endl;
            }
            else if (main_mr[opt].localAddr + main_mr[opt].length < query.localAddr + query.length)
                std::cout << "[ memregion_table ] The meta is not in the range: main_mr[opt].localAddr + main_mr[opt].length < query.localAddr + query.length" << std::endl;
        }
        else rt_regionRspFifo.write(mem_cmp_resp(1));    
    }
}
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
)
{
#pragma HLS PIPELINE II=1
#pragma HLS INLINE off
    enum memregionStateType {MAIN, REGISTER, RX_QUERY_0, RX_QUERY_1, TX_QUERY_0, TX_QUERY_1};
    static memregionStateType mr_state = MAIN;
    static mem_register regr;
    static mem_cmp_req rx_query;
    static mem_cmp_req tx_query;
    static mem_cmp_resp rx_qrsp;
    static mem_cmp_resp tx_qrsp;
    switch (mr_state)
    {
    case MAIN:
        // std::cout << "take mr_ops_fsm -> MAIN" << std::endl;
        if(!mr_register.empty())
        {
            //Is the newMetaIdx needed? numpy or list?
            mr_register.read(regr);
            mr_state = REGISTER;
        }
        else if(!rx_mr_query.empty())
        {
            rx_mr_query.read(rx_query);
            mr_state = RX_QUERY_0;
        }
        else if(!tx_mr_query.empty())
        {
            tx_mr_query.read(tx_query);
            mr_state = TX_QUERY_0;
        }
        break;
    case REGISTER:
        std::cout << std::hex << "[ mr_ops_fsm ] take mr_ops_fsm -> REGISTER, mr_register.localAddr = " << regr.localAddr << ", mr_register.length = " << regr.length << ", mr_register.r_key = " << regr.r_key << std::endl;
        rt_regionIstFifo.write(mem_region(regr, true));
        mr_state = MAIN;
        break;
    case RX_QUERY_0:
        //?
        rt_regionReqFifo.write(rx_query);
        std::cout << "[ mr_ops_fsm ] take mr_ops_fsm -> RX_QUERY_0" << std::endl;
        mr_state = RX_QUERY_1;
        break;
    case RX_QUERY_1:
        if(!rt_regionRspFifo.empty())
        {
            std::cout << "[ mr_ops_fsm ] take mr_ops_fsm -> RX_QUERY_1(RSP)" << std::endl;
            rt_regionRspFifo.read(rx_qrsp);
            rx_mr_query_rsp.write(rx_qrsp);
            mr_state = MAIN;
        }
        break;
    case TX_QUERY_0:
        rt_regionReqFifo.write(tx_query);
        std::cout << "[ mr_ops_fsm ] take mr_ops_fsm -> TX_QUERY_0" << std::endl;
        mr_state = TX_QUERY_1;
        break;
    case TX_QUERY_1:
        if(!rt_regionRspFifo.empty())
        {
            std::cout << "[ mr_ops_fsm ] take mr_ops_fsm -> TX_QUERY_1(RSP)" << std::endl;
            rt_regionRspFifo.read(tx_qrsp);
            tx_mr_query_rsp.write(tx_qrsp);
            mr_state = MAIN;
        }
        break;
    }// switch
}

void ib_mr(
    stream<mem_register>&       mr_register,
    stream<mem_cmp_req>&        tx_mr_query,
    stream<mem_cmp_resp>&       tx_mr_query_rsp,
    stream<mem_cmp_req>&        rx_mr_query,
    stream<mem_cmp_resp>&       rx_mr_query_rsp
)
{
#pragma HLS INLINE
    static stream<mem_region>     rt_regionIstFifo("rt_regionIstFifo");
    static stream<mem_cmp_req>    rt_regionReqFifo("rt_regionReqFifo");
    static stream<mem_cmp_resp>   rt_regionRspFifo("rt_regionRspFifo");
	#pragma HLS STREAM depth=2 variable=rt_regionIstFifo
	#pragma HLS STREAM depth=2 variable=rt_regionReqFifo
	#pragma HLS STREAM depth=2 variable=rt_regionRspFifo

    memregion_table(rt_regionIstFifo, rt_regionReqFifo, rt_regionRspFifo);
    
    mr_ops_fsm(
        mr_register,
        rt_regionIstFifo,
        rt_regionReqFifo,
        rt_regionRspFifo,
        tx_mr_query,
        tx_mr_query_rsp,
        rx_mr_query,
        rx_mr_query_rsp
    );

}
