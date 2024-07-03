// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_merge_rx_pkgs_512_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rx_rethSift2mergerFifo_dout,
        rx_rethSift2mergerFifo_num_data_valid,
        rx_rethSift2mergerFifo_fifo_cap,
        rx_rethSift2mergerFifo_empty_n,
        rx_rethSift2mergerFifo_read,
        rx_aethSift2mergerFifo_dout,
        rx_aethSift2mergerFifo_num_data_valid,
        rx_aethSift2mergerFifo_fifo_cap,
        rx_aethSift2mergerFifo_empty_n,
        rx_aethSift2mergerFifo_read,
        rx_exhNoShiftFifo_dout,
        rx_exhNoShiftFifo_num_data_valid,
        rx_exhNoShiftFifo_fifo_cap,
        rx_exhNoShiftFifo_empty_n,
        rx_exhNoShiftFifo_read,
        rx_pkgShiftTypeFifo_dout,
        rx_pkgShiftTypeFifo_num_data_valid,
        rx_pkgShiftTypeFifo_fifo_cap,
        rx_pkgShiftTypeFifo_empty_n,
        rx_pkgShiftTypeFifo_read,
        m_axis_mem_write_data_internal_din,
        m_axis_mem_write_data_internal_num_data_valid,
        m_axis_mem_write_data_internal_fifo_cap,
        m_axis_mem_write_data_internal_full_n,
        m_axis_mem_write_data_internal_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] rx_rethSift2mergerFifo_dout;
input  [2:0] rx_rethSift2mergerFifo_num_data_valid;
input  [2:0] rx_rethSift2mergerFifo_fifo_cap;
input   rx_rethSift2mergerFifo_empty_n;
output   rx_rethSift2mergerFifo_read;
input  [1023:0] rx_aethSift2mergerFifo_dout;
input  [2:0] rx_aethSift2mergerFifo_num_data_valid;
input  [2:0] rx_aethSift2mergerFifo_fifo_cap;
input   rx_aethSift2mergerFifo_empty_n;
output   rx_aethSift2mergerFifo_read;
input  [1023:0] rx_exhNoShiftFifo_dout;
input  [2:0] rx_exhNoShiftFifo_num_data_valid;
input  [2:0] rx_exhNoShiftFifo_fifo_cap;
input   rx_exhNoShiftFifo_empty_n;
output   rx_exhNoShiftFifo_read;
input  [55:0] rx_pkgShiftTypeFifo_dout;
input  [1:0] rx_pkgShiftTypeFifo_num_data_valid;
input  [1:0] rx_pkgShiftTypeFifo_fifo_cap;
input   rx_pkgShiftTypeFifo_empty_n;
output   rx_pkgShiftTypeFifo_read;
output  [1023:0] m_axis_mem_write_data_internal_din;
input  [1:0] m_axis_mem_write_data_internal_num_data_valid;
input  [1:0] m_axis_mem_write_data_internal_fifo_cap;
input   m_axis_mem_write_data_internal_full_n;
output   m_axis_mem_write_data_internal_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rx_rethSift2mergerFifo_read;
reg rx_aethSift2mergerFifo_read;
reg rx_exhNoShiftFifo_read;
reg rx_pkgShiftTypeFifo_read;
reg[1023:0] m_axis_mem_write_data_internal_din;
reg m_axis_mem_write_data_internal_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_169_i_nbreadreq_fu_48_p3;
reg    ap_predicate_op28_read_state1;
wire   [0:0] tmp_i_283_nbreadreq_fu_62_p3;
reg    ap_predicate_op37_read_state1;
wire   [0:0] tmp_168_i_nbreadreq_fu_76_p3;
reg    ap_predicate_op46_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_90_p3;
reg    ap_predicate_op55_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] state_3_load_reg_201;
reg   [0:0] tmp_169_i_reg_205;
reg    ap_predicate_op65_write_state2;
reg   [0:0] tmp_i_283_reg_217;
reg    ap_predicate_op66_write_state2;
reg   [0:0] tmp_168_i_reg_229;
reg    ap_predicate_op67_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [1:0] state_3;
reg    rx_pkgShiftTypeFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    rx_aethSift2mergerFifo_blk_n;
reg    m_axis_mem_write_data_internal_blk_n;
reg    rx_rethSift2mergerFifo_blk_n;
reg    rx_exhNoShiftFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [1023:0] rx_rethSift2mergerFifo_read_reg_209;
reg   [1023:0] rx_aethSift2mergerFifo_read_reg_221;
reg   [1023:0] rx_exhNoShiftFifo_read_reg_233;
wire   [1:0] select_ln976_1_fu_187_p3;
wire   [0:0] currWord_last_V_10_fu_115_p3;
wire   [0:0] currWord_last_V_9_fu_129_p3;
wire   [0:0] currWord_last_V_fu_143_p3;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] shift_type_fu_157_p1;
wire   [0:0] icmp_ln976_1_fu_167_p2;
wire   [0:0] icmp_ln976_fu_161_p2;
wire   [0:0] or_ln976_fu_181_p2;
wire   [1:0] select_ln976_fu_173_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_216;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 state_3 = 2'd0;
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
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_90_p3 == 1'd1) & (state_3 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_3 <= select_ln976_1_fu_187_p3;
    end else if ((((tmp_168_i_nbreadreq_fu_76_p3 == 1'd1) & (state_3 == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (currWord_last_V_fu_143_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_283_nbreadreq_fu_62_p3 == 1'd1) & (state_3 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (currWord_last_V_9_fu_129_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_169_i_nbreadreq_fu_48_p3 == 1'd1) & (state_3 == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (currWord_last_V_10_fu_115_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        state_3 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op37_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_aethSift2mergerFifo_read_reg_221 <= rx_aethSift2mergerFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_exhNoShiftFifo_read_reg_233 <= rx_exhNoShiftFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op28_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_rethSift2mergerFifo_read_reg_209 <= rx_rethSift2mergerFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_3_load_reg_201 <= state_3;
    end
end

always @ (posedge ap_clk) begin
    if (((state_3 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_168_i_reg_229 <= tmp_168_i_nbreadreq_fu_76_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state_3 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_169_i_reg_205 <= tmp_169_i_nbreadreq_fu_48_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state_3 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_283_reg_217 <= tmp_i_283_nbreadreq_fu_62_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op66_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op65_write_state2 == 1'b1)))) begin
        m_axis_mem_write_data_internal_blk_n = m_axis_mem_write_data_internal_full_n;
    end else begin
        m_axis_mem_write_data_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_216)) begin
        if ((ap_predicate_op67_write_state2 == 1'b1)) begin
            m_axis_mem_write_data_internal_din = rx_exhNoShiftFifo_read_reg_233;
        end else if ((ap_predicate_op66_write_state2 == 1'b1)) begin
            m_axis_mem_write_data_internal_din = rx_aethSift2mergerFifo_read_reg_221;
        end else if ((ap_predicate_op65_write_state2 == 1'b1)) begin
            m_axis_mem_write_data_internal_din = rx_rethSift2mergerFifo_read_reg_209;
        end else begin
            m_axis_mem_write_data_internal_din = 'bx;
        end
    end else begin
        m_axis_mem_write_data_internal_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op66_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op65_write_state2 == 1'b1)))) begin
        m_axis_mem_write_data_internal_write = 1'b1;
    end else begin
        m_axis_mem_write_data_internal_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op37_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_aethSift2mergerFifo_blk_n = rx_aethSift2mergerFifo_empty_n;
    end else begin
        rx_aethSift2mergerFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op37_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_aethSift2mergerFifo_read = 1'b1;
    end else begin
        rx_aethSift2mergerFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_exhNoShiftFifo_blk_n = rx_exhNoShiftFifo_empty_n;
    end else begin
        rx_exhNoShiftFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_exhNoShiftFifo_read = 1'b1;
    end else begin
        rx_exhNoShiftFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op55_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_pkgShiftTypeFifo_blk_n = rx_pkgShiftTypeFifo_empty_n;
    end else begin
        rx_pkgShiftTypeFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op55_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_pkgShiftTypeFifo_read = 1'b1;
    end else begin
        rx_pkgShiftTypeFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_rethSift2mergerFifo_blk_n = rx_rethSift2mergerFifo_empty_n;
    end else begin
        rx_rethSift2mergerFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_rethSift2mergerFifo_read = 1'b1;
    end else begin
        rx_rethSift2mergerFifo_read = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op55_read_state1 == 1'b1) & (rx_pkgShiftTypeFifo_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (rx_exhNoShiftFifo_empty_n == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (rx_aethSift2mergerFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (rx_rethSift2mergerFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op67_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op66_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op65_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op55_read_state1 == 1'b1) & (rx_pkgShiftTypeFifo_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (rx_exhNoShiftFifo_empty_n == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (rx_aethSift2mergerFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (rx_rethSift2mergerFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op67_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op66_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op65_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op55_read_state1 == 1'b1) & (rx_pkgShiftTypeFifo_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (rx_exhNoShiftFifo_empty_n == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (rx_aethSift2mergerFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (rx_rethSift2mergerFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op67_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op66_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op65_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op55_read_state1 == 1'b1) & (rx_pkgShiftTypeFifo_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (rx_exhNoShiftFifo_empty_n == 1'b0)) | ((ap_predicate_op37_read_state1 == 1'b1) & (rx_aethSift2mergerFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (rx_rethSift2mergerFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op67_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op66_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)) | ((ap_predicate_op65_write_state2 == 1'b1) & (m_axis_mem_write_data_internal_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_216 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op28_read_state1 = ((tmp_169_i_nbreadreq_fu_48_p3 == 1'd1) & (state_3 == 2'd2));
end

always @ (*) begin
    ap_predicate_op37_read_state1 = ((tmp_i_283_nbreadreq_fu_62_p3 == 1'd1) & (state_3 == 2'd1));
end

always @ (*) begin
    ap_predicate_op46_read_state1 = ((tmp_168_i_nbreadreq_fu_76_p3 == 1'd1) & (state_3 == 2'd3));
end

always @ (*) begin
    ap_predicate_op55_read_state1 = ((tmp_i_nbreadreq_fu_90_p3 == 1'd1) & (state_3 == 2'd0));
end

always @ (*) begin
    ap_predicate_op65_write_state2 = ((tmp_169_i_reg_205 == 1'd1) & (state_3_load_reg_201 == 2'd2));
end

always @ (*) begin
    ap_predicate_op66_write_state2 = ((tmp_i_283_reg_217 == 1'd1) & (state_3_load_reg_201 == 2'd1));
end

always @ (*) begin
    ap_predicate_op67_write_state2 = ((tmp_168_i_reg_229 == 1'd1) & (state_3_load_reg_201 == 2'd3));
end

assign currWord_last_V_10_fu_115_p3 = rx_rethSift2mergerFifo_dout[1024'd576];

assign currWord_last_V_9_fu_129_p3 = rx_aethSift2mergerFifo_dout[1024'd576];

assign currWord_last_V_fu_143_p3 = rx_exhNoShiftFifo_dout[1024'd576];

assign icmp_ln976_1_fu_167_p2 = ((shift_type_fu_157_p1 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln976_fu_161_p2 = ((shift_type_fu_157_p1 == 32'd1) ? 1'b1 : 1'b0);

assign or_ln976_fu_181_p2 = (icmp_ln976_fu_161_p2 | icmp_ln976_1_fu_167_p2);

assign select_ln976_1_fu_187_p3 = ((or_ln976_fu_181_p2[0:0] == 1'b1) ? select_ln976_fu_173_p3 : 2'd3);

assign select_ln976_fu_173_p3 = ((icmp_ln976_1_fu_167_p2[0:0] == 1'b1) ? 2'd1 : 2'd2);

assign shift_type_fu_157_p1 = rx_pkgShiftTypeFifo_dout[31:0];

assign tmp_168_i_nbreadreq_fu_76_p3 = rx_exhNoShiftFifo_empty_n;

assign tmp_169_i_nbreadreq_fu_48_p3 = rx_rethSift2mergerFifo_empty_n;

assign tmp_i_283_nbreadreq_fu_62_p3 = rx_aethSift2mergerFifo_empty_n;

assign tmp_i_nbreadreq_fu_90_p3 = rx_pkgShiftTypeFifo_empty_n;

endmodule //rocev2_top_merge_rx_pkgs_512_0_s
