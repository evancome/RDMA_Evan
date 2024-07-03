// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_wqe_freelist_handler_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        wqe_releaseFifo_dout,
        wqe_releaseFifo_num_data_valid,
        wqe_releaseFifo_fifo_cap,
        wqe_releaseFifo_empty_n,
        wqe_releaseFifo_read,
        wqe_freeListFifo_din,
        wqe_freeListFifo_num_data_valid,
        wqe_freeListFifo_fifo_cap,
        wqe_freeListFifo_full_n,
        wqe_freeListFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] wqe_releaseFifo_dout;
input  [1:0] wqe_releaseFifo_num_data_valid;
input  [1:0] wqe_releaseFifo_fifo_cap;
input   wqe_releaseFifo_empty_n;
output   wqe_releaseFifo_read;
output  [15:0] wqe_freeListFifo_din;
input  [11:0] wqe_freeListFifo_num_data_valid;
input  [11:0] wqe_freeListFifo_fifo_cap;
input   wqe_freeListFifo_full_n;
output   wqe_freeListFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg wqe_releaseFifo_read;
reg[15:0] wqe_freeListFifo_din;
reg wqe_freeListFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_36_p3;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_92;
wire   [0:0] icmp_ln1027_fu_74_p2;
wire   [0:0] tmp_i_169_nbwritereq_fu_50_p3;
reg    ap_predicate_op23_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [7:0] freeListCounter_V;
reg    wqe_releaseFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    wqe_freeListFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] wqe_releaseFifo_read_reg_96;
wire   [7:0] add_ln840_fu_80_p2;
wire   [15:0] zext_ln1027_fu_69_p1;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_117;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 freeListCounter_V = 8'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        freeListCounter_V <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_169_nbwritereq_fu_50_p3 == 1'd1) & (icmp_ln1027_fu_74_p2 == 1'd1) & (tmp_i_reg_92 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            freeListCounter_V <= add_ln840_fu_80_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_92 <= tmp_i_nbreadreq_fu_36_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wqe_releaseFifo_read_reg_96 <= wqe_releaseFifo_dout;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (tmp_i_reg_92 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op23_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        wqe_freeListFifo_blk_n = wqe_freeListFifo_full_n;
    end else begin
        wqe_freeListFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_117)) begin
        if ((tmp_i_reg_92 == 1'd1)) begin
            wqe_freeListFifo_din = wqe_releaseFifo_read_reg_96;
        end else if ((ap_predicate_op23_write_state2 == 1'b1)) begin
            wqe_freeListFifo_din = zext_ln1027_fu_69_p1;
        end else begin
            wqe_freeListFifo_din = 'bx;
        end
    end else begin
        wqe_freeListFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_92 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op23_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        wqe_freeListFifo_write = 1'b1;
    end else begin
        wqe_freeListFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wqe_releaseFifo_blk_n = wqe_releaseFifo_empty_n;
    end else begin
        wqe_releaseFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wqe_releaseFifo_read = 1'b1;
    end else begin
        wqe_releaseFifo_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln840_fu_80_p2 = (freeListCounter_V + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_i_reg_92 == 1'd1) & (wqe_freeListFifo_full_n == 1'b0)) | ((ap_predicate_op23_write_state2 == 1'b1) & (wqe_freeListFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (wqe_releaseFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_i_reg_92 == 1'd1) & (wqe_freeListFifo_full_n == 1'b0)) | ((ap_predicate_op23_write_state2 == 1'b1) & (wqe_freeListFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (wqe_releaseFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_i_reg_92 == 1'd1) & (wqe_freeListFifo_full_n == 1'b0)) | ((ap_predicate_op23_write_state2 == 1'b1) & (wqe_freeListFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (wqe_releaseFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_36_p3 == 1'd1) & (wqe_releaseFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((tmp_i_reg_92 == 1'd1) & (wqe_freeListFifo_full_n == 1'b0)) | ((ap_predicate_op23_write_state2 == 1'b1) & (wqe_freeListFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_117 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op23_write_state2 = ((tmp_i_169_nbwritereq_fu_50_p3 == 1'd1) & (icmp_ln1027_fu_74_p2 == 1'd1) & (tmp_i_reg_92 == 1'd0));
end

assign icmp_ln1027_fu_74_p2 = ((freeListCounter_V < 8'd200) ? 1'b1 : 1'b0);

assign tmp_i_169_nbwritereq_fu_50_p3 = wqe_freeListFifo_full_n;

assign tmp_i_nbreadreq_fu_36_p3 = wqe_releaseFifo_empty_n;

assign zext_ln1027_fu_69_p1 = freeListCounter_V;

endmodule //rocev2_top_wqe_freelist_handler_0_s
