/*
* Date: 2024.06.24
* Modified by: Li Wen
*/

`timescale 1ns / 1ps

import lynxTypes::*;

`include "axi_macros.svh"
`include "lynx_macros.svh"

/**
 * @brief   Top level TLB for a single vFPGA
 *
 * Top level of a single vFPGA TLB, feeds into the top level arbitration.
 *
 *  @param ID_REG   Number of associated vFPGA
 */
module tlb_region_top #(
	parameter integer 					ID_REG = 0	
) (
	input logic        					aclk,    
	input logic    						aresetn,
	
    AXI4L.s   							s_axi_ctrl_sTlb,
    AXI4L.s   							s_axi_ctrl_lTlb,

	// AXI config
	AXI4.s   							s_axim_ctrl_cnfg,

	// Requests user
	metaIntf.s 						    s_bpss_rd_req,
	metaIntf.s						    s_bpss_wr_req,
    metaIntf.m                          m_bpss_rd_done,
    metaIntf.m                          m_bpss_wr_done,


	// RDMA request QSFP0
	metaIntf.m  						m_rdma_0_sq,
    metaIntf.s  						s_rdma_0_ack,

	// Stream DMAs
    dmaIntf.m                           m_rd_HDMA,
    dmaIntf.m                           m_wr_HDMA,

    // Credits
    input  logic                        rxfer_host,
    input  logic                        wxfer_host,
    output cred_t                       rd_dest_host,

	// Decoupling
	output logic 		                decouple,
	
	// Page fault IRQ
	output logic                    	pf_irq
);

// -- Decl -----------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------
localparam integer PG_L_SIZE = 1 << PG_L_BITS;
localparam integer PG_S_SIZE = 1 << PG_S_BITS;
localparam integer HASH_L_BITS = TLB_L_ORDER;
localparam integer HASH_S_BITS = TLB_S_ORDER;  //10
localparam integer PHY_L_BITS = PADDR_BITS - PG_L_BITS;
localparam integer PHY_S_BITS = PADDR_BITS - PG_S_BITS; // 40-12 = 28
localparam integer TAG_L_BITS = VADDR_BITS - HASH_L_BITS - PG_L_BITS;
localparam integer TAG_S_BITS = VADDR_BITS - HASH_S_BITS - PG_S_BITS;  // 48 - 10 - 12 = 26
localparam integer TLB_L_DATA_BITS = TAG_L_BITS + PID_BITS + 1 + 2*PHY_L_BITS;
localparam integer TLB_S_DATA_BITS = TAG_S_BITS + PID_BITS + 1 + 2*PHY_S_BITS;

// Tlb interfaces
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_L_DATA_BITS)) rd_lTlb ();
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_S_DATA_BITS)) rd_sTlb ();
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_L_DATA_BITS)) wr_lTlb ();
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_S_DATA_BITS)) wr_sTlb ();
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_L_DATA_BITS)) lTlb ();
tlbIntf #(.TLB_INTF_DATA_BITS(TLB_S_DATA_BITS)) sTlb ();

metaIntf #(.STYPE(dma_rsp_t)) rd_host_done ();
metaIntf #(.STYPE(dma_rsp_t)) wr_host_done ();

metaIntf #(.STYPE(pfault_t)) rd_pfault ();
metaIntf #(.STYPE(pfault_t)) wr_pfault ();

logic rd_restart;
logic wr_restart;

// Request interfaces
metaIntf #(.STYPE(req_t)) rd_req ();
metaIntf #(.STYPE(req_t)) wr_req ();

logic done_map_lTlb;
logic done_map_sTlb;

AXI4S #(.AXI4S_DATA_BITS(AXI_TLB_BITS)) axis_lTlb_0 ();
AXI4S #(.AXI4S_DATA_BITS(AXI_TLB_BITS)) axis_sTlb_0 ();

AXI4S #(.AXI4S_DATA_BITS(AXI_TLB_BITS)) axis_lTlb ();
AXI4S #(.AXI4S_DATA_BITS(AXI_TLB_BITS)) axis_sTlb ();

// Mutex
logic [1:0] mutex;
logic rd_lock, wr_lock;
logic rd_unlock, wr_unlock;

// ----------------------------------------------------------------------------------------
// Mutex 
// ----------------------------------------------------------------------------------------
always_ff @(posedge aclk) begin
	if(aresetn == 1'b0) begin
		mutex <= 2'b01;
	end else begin
		if(mutex[0] == 1'b1) begin // free
			if(rd_lock)
				mutex <= 2'b00;
			else if(wr_lock)
				mutex <= 2'b10;
		end
		else begin // locked
			if((mutex[1] == 1'b0) && rd_unlock)
				mutex <= 2'b01;
			else if (wr_unlock)
				mutex <= 2'b01;
		end
	end
end

// ----------------------------------------------------------------------------------------
// TLB
// ---------------------------------------------------------------------------------------- 
assign rd_lTlb.data = lTlb.data;
assign wr_lTlb.data = lTlb.data;
assign rd_sTlb.data = sTlb.data;
assign wr_sTlb.data = sTlb.data;
assign rd_lTlb.hit  = lTlb.hit;
assign wr_lTlb.hit  = lTlb.hit;
assign rd_sTlb.hit  = sTlb.hit;
assign wr_sTlb.hit  = sTlb.hit;

assign lTlb.addr  = mutex[1] ? wr_lTlb.addr : rd_lTlb.addr;
assign sTlb.addr  = mutex[1] ? wr_sTlb.addr : rd_sTlb.addr;
assign lTlb.pid   = mutex[1] ? wr_lTlb.pid : rd_lTlb.pid;
assign sTlb.pid   = mutex[1] ? wr_sTlb.pid : rd_sTlb.pid;
assign lTlb.wr    = mutex[1] ? wr_lTlb.wr : rd_lTlb.wr;
assign sTlb.wr    = mutex[1] ? wr_sTlb.wr : rd_sTlb.wr;
assign lTlb.valid = mutex[1] ? wr_lTlb.valid : rd_lTlb.valid;
assign sTlb.valid = mutex[1] ? wr_sTlb.valid : rd_sTlb.valid;

// TLBs
tlb_controller #(
    .TLB_ORDER(TLB_L_ORDER),  // 9
    .PG_BITS(PG_L_BITS), //21
    .N_ASSOC(N_L_ASSOC),
    .DBG_L(1)
) inst_lTlb (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis(axis_lTlb),
    .TLB(lTlb),
    .done_map(done_map_lTlb)
);

tlb_controller #(
    .TLB_ORDER(TLB_S_ORDER), //10
    .PG_BITS(PG_S_BITS),
    .N_ASSOC(N_S_ASSOC),
    .DBG_S(1)
) inst_sTlb (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis(axis_sTlb),
    .TLB(sTlb),
    .done_map(done_map_sTlb)
);

// TLB slaves
tlb_slave_axil #(
    .TLB_ORDER(TLB_L_ORDER),
    .PG_BITS(PG_L_BITS),
    .N_ASSOC(N_L_ASSOC)
) inst_lTlb_slv_0 (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axi_ctrl(s_axi_ctrl_lTlb),
    .m_axis(axis_lTlb_0)                                                                                                                                                                                                                                                                                                                       
);

tlb_slave_axil #(
    .TLB_ORDER(TLB_S_ORDER),
    .PG_BITS(PG_S_BITS),
    .N_ASSOC(N_S_ASSOC)
) inst_sTlb_slv_0 (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axi_ctrl(s_axi_ctrl_sTlb),
    .m_axis(axis_sTlb_0)
);


   


`AXIS_ASSIGN(axis_sTlb_0, axis_sTlb)
`AXIS_ASSIGN(axis_lTlb_0, axis_lTlb)


// ----------------------------------------------------------------------------------------
// Config slave
// ---------------------------------------------------------------------------------------- 

	cnfg_slave_avx #(.ID_REG(ID_REG)) inst_cnfg_slave (

		.aclk(aclk),
		.aresetn(aresetn),

		.s_axim_ctrl(s_axim_ctrl_cnfg),

		.s_bpss_rd_req(s_bpss_rd_req),
		.s_bpss_wr_req(s_bpss_wr_req),
        .m_bpss_rd_done(m_bpss_rd_done),
        .m_bpss_wr_done(m_bpss_wr_done),



		.m_rdma_0_sq(m_rdma_0_sq),
        .s_rdma_0_ack(s_rdma_0_ack),


        .m_rd_req(rd_req),
		.m_wr_req(wr_req),

        .s_host_done_rd(rd_host_done),
        .s_host_done_wr(wr_host_done),

        .s_pfault_rd(rd_pfault),
        .s_pfault_wr(wr_pfault),
        .restart_rd(rd_restart),
        .restart_wr(wr_restart),
		.decouple(decouple),
		.pf_irq(pf_irq)
	);
// ----------------------------------------------------------------------------------------
// Parsing
// ----------------------------------------------------------------------------------------
metaIntf #(.STYPE(req_t)) rd_req_parsed ();
metaIntf #(.STYPE(req_t)) wr_req_parsed ();
metaIntf #(.STYPE(req_t)) rd_req_parsed_q ();
metaIntf #(.STYPE(req_t)) wr_req_parsed_q ();

tlb_parser inst_rd_parser (.aclk(aclk), .aresetn(aresetn), .s_req(rd_req), .m_req(rd_req_parsed));
tlb_parser inst_wr_parser (.aclk(aclk), .aresetn(aresetn), .s_req(wr_req), .m_req(wr_req_parsed));

// Queueing
meta_queue #(.DATA_BITS($bits(req_t))) inst_rd_q_parser (.aclk(aclk), .aresetn(aresetn), .s_meta(rd_req_parsed), .m_meta(rd_req_parsed_q));
meta_queue #(.DATA_BITS($bits(req_t))) inst_wr_q_parser (.aclk(aclk), .aresetn(aresetn), .s_meta(wr_req_parsed), .m_meta(wr_req_parsed_q));

// ----------------------------------------------------------------------------------------
// FSM
// ----------------------------------------------------------------------------------------
    // FSM
    dmaIntf rd_HDMA_fsm ();
    dmaIntf wr_HDMA_fsm ();
    
    dmaIntf rd_HDMA_fsm_q ();
    dmaIntf wr_HDMA_fsm_q ();

    // Credits
    dmaIntf rd_HDMA_cred ();
    dmaIntf wr_HDMA_cred ();


// TLB rd FSM
tlb_fsm_rd #(
    .ID_REG(ID_REG)   
) inst_fsm_rd (
    .aclk(aclk),
    .aresetn(aresetn),
    .lTlb(rd_lTlb),
    .sTlb(rd_sTlb),

    .m_host_done(rd_host_done),

    .m_pfault(rd_pfault),
    .restart(rd_restart),
    .s_req(rd_req_parsed_q),

    .m_HDMA(rd_HDMA_fsm),


    .lock(rd_lock),
	.unlock(rd_unlock),
	.mutex(mutex)
);

// TLB wr FSM
tlb_fsm_wr #(
    .ID_REG(ID_REG)   
) inst_fsm_wr (
    .aclk(aclk),
    .aresetn(aresetn),
    .lTlb(wr_lTlb),
    .sTlb(wr_sTlb),
    .m_host_done(wr_host_done),

    .m_pfault(wr_pfault),
    .restart(wr_restart),
    .s_req(wr_req_parsed_q),

    .m_HDMA(wr_HDMA_fsm),

    .lock(wr_lock),
	.unlock(wr_unlock),
	.mutex(mutex)
);

// Queueing
    // HDMA
    dma_req_queue inst_rd_q_fsm_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(rd_HDMA_fsm), .m_req(rd_HDMA_fsm_q));
    dma_req_queue inst_wr_q_fsm_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(wr_HDMA_fsm), .m_req(wr_HDMA_fsm_q));



// ----------------------------------------------------------------------------------------
// Credits and output
// ----------------------------------------------------------------------------------------

    // HDMA
    tlb_credits_rd #(.ID_REG(ID_REG)) inst_rd_cred_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(rd_HDMA_fsm_q), .m_req(rd_HDMA_cred), .rxfer(rxfer_host), .rd_dest(rd_dest_host));
    tlb_credits_wr #(.ID_REG(ID_REG)) inst_wr_cred_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(wr_HDMA_fsm_q), .m_req(wr_HDMA_cred), .wxfer(wxfer_host));

    // Queueing
    dma_req_queue inst_rd_q_cred_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(rd_HDMA_cred), .m_req(m_rd_HDMA));
    dma_req_queue inst_wr_q_cred_hdma (.aclk(aclk), .aresetn(aresetn), .s_req(wr_HDMA_cred), .m_req(m_wr_HDMA));


endmodule