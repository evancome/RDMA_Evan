// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_prepend_ibh_header_512_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_shift2ibhFifo_dout,
        tx_shift2ibhFifo_num_data_valid,
        tx_shift2ibhFifo_fifo_cap,
        tx_shift2ibhFifo_empty_n,
        tx_shift2ibhFifo_read,
        tx_ibhHeaderFifo_dout,
        tx_ibhHeaderFifo_num_data_valid,
        tx_ibhHeaderFifo_fifo_cap,
        tx_ibhHeaderFifo_empty_n,
        tx_ibhHeaderFifo_read,
        tx_ib2udpFifo_din,
        tx_ib2udpFifo_num_data_valid,
        tx_ib2udpFifo_fifo_cap,
        tx_ib2udpFifo_full_n,
        tx_ib2udpFifo_write,
        regIbvCountTx,
        regIbvCountTx_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv512_lc_2 = 512'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] tx_shift2ibhFifo_dout;
input  [3:0] tx_shift2ibhFifo_num_data_valid;
input  [3:0] tx_shift2ibhFifo_fifo_cap;
input   tx_shift2ibhFifo_empty_n;
output   tx_shift2ibhFifo_read;
input  [112:0] tx_ibhHeaderFifo_dout;
input  [1:0] tx_ibhHeaderFifo_num_data_valid;
input  [1:0] tx_ibhHeaderFifo_fifo_cap;
input   tx_ibhHeaderFifo_empty_n;
output   tx_ibhHeaderFifo_read;
output  [1023:0] tx_ib2udpFifo_din;
input  [1:0] tx_ib2udpFifo_num_data_valid;
input  [1:0] tx_ib2udpFifo_fifo_cap;
input   tx_ib2udpFifo_full_n;
output   tx_ib2udpFifo_write;
output  [31:0] regIbvCountTx;
output   regIbvCountTx_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_shift2ibhFifo_read;
reg tx_ibhHeaderFifo_read;
reg[1023:0] tx_ib2udpFifo_din;
reg tx_ib2udpFifo_write;
reg[31:0] regIbvCountTx;
reg regIbvCountTx_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [1:0] state_2_load_load_fu_171_p1;
wire   [0:0] grp_nbreadreq_fu_90_p3;
reg    ap_predicate_op9_read_state1;
reg    ap_predicate_op34_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_104_p3;
reg    ap_predicate_op43_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] state_2_load_reg_384;
reg   [0:0] tmp_i_281_reg_388;
reg    ap_predicate_op68_write_state2;
reg   [0:0] tmp_155_i_reg_418;
reg    ap_predicate_op82_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [1:0] state_2;
reg   [15:0] header_idx_1;
reg   [95:0] header_header_V_1;
reg   [31:0] validTx_V;
reg    tx_ibhHeaderFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    tx_ib2udpFifo_blk_n;
reg    tx_shift2ibhFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [511:0] currWord_data_V_fu_184_p1;
wire   [511:0] p_Result_12_fu_202_p5;
wire   [0:0] icmp_ln82_1_fu_196_p2;
reg   [64:0] tmp_reg_405;
wire   [511:0] p_Result_s_fu_264_p5;
wire   [0:0] icmp_ln82_fu_258_p2;
reg   [1023:0] tx_shift2ibhFifo_read_reg_422;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_132;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_132;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_141;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_141;
wire   [1:0] select_ln1973_cast_i_fu_236_p3;
wire   [0:0] grp_fu_152_p3;
wire   [15:0] grp_fu_160_p2;
wire   [31:0] grp_fu_165_p2;
wire   [1023:0] zext_ln174_52_fu_344_p1;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_fu_367_p1;
reg   [31:0] regIbvCountTx_preg;
wire   [24:0] shl_ln76_1_fu_188_p3;
wire   [0:0] xor_ln1973_fu_230_p2;
wire   [24:0] shl_ln_fu_250_p3;
wire   [576:0] tmp_s_fu_337_p3;
wire   [512:0] or_ln_fu_355_p3;
wire  signed [575:0] sext_ln174_fu_363_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_153;
reg    ap_condition_162;
reg    ap_condition_184;
reg    ap_condition_196;
reg    ap_condition_227;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 state_2 = 2'd0;
#0 header_idx_1 = 16'd0;
#0 header_header_V_1 = 96'd0;
#0 validTx_V = 32'd0;
#0 regIbvCountTx_preg = 32'd0;
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
    if (ap_rst == 1'b1) begin
        regIbvCountTx_preg <= 32'd0;
    end else begin
        if ((((tmp_155_i_reg_418 == 1'd1) & (state_2_load_reg_384 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)) | ((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)) | ((tmp_i_281_reg_388 == 1'd1) & (state_2_load_reg_384 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
            regIbvCountTx_preg <= grp_fu_165_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_153)) begin
        if (((state_2_load_load_fu_171_p1 == 2'd1) & (icmp_ln82_fu_258_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_141 <= p_Result_s_fu_264_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_141 <= ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_141;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_153)) begin
        if ((1'b1 == ap_condition_184)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_132 <= currWord_data_V_fu_184_p1;
        end else if ((1'b1 == ap_condition_162)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_132 <= p_Result_12_fu_202_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_132 <= ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_132;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_104_p3 == 1'd1) & (state_2 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx_1 <= {{tx_ibhHeaderFifo_dout[16:1]}};
    end else if ((((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_1_fu_196_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_2_load_load_fu_171_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        header_idx_1 <= grp_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_153)) begin
        if (((tmp_i_nbreadreq_fu_104_p3 == 1'd1) & (state_2 == 2'd0))) begin
            state_2 <= 2'd2;
        end else if ((1'b1 == ap_condition_196)) begin
            state_2 <= 2'd0;
        end else if ((state_2_load_load_fu_171_p1 == 2'd1)) begin
            state_2 <= 2'd2;
        end else if (((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2))) begin
            state_2 <= select_ln1973_cast_i_fu_236_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_104_p3 == 1'd1) & (state_2 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V_1 <= {{tx_ibhHeaderFifo_dout[112:17]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_2_load_reg_384 <= state_2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_2 == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_155_i_reg_418 <= grp_nbreadreq_fu_90_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state_2 == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_281_reg_388 <= grp_nbreadreq_fu_90_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_405 <= {{tx_shift2ibhFifo_dout[576:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op34_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_shift2ibhFifo_read_reg_422 <= tx_shift2ibhFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((((tmp_155_i_reg_418 == 1'd1) & (state_2_load_reg_384 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_281_reg_388 == 1'd1) & (state_2_load_reg_384 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        validTx_V <= grp_fu_165_p2;
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
    if ((((tmp_155_i_reg_418 == 1'd1) & (state_2_load_reg_384 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)) | ((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)) | ((tmp_i_281_reg_388 == 1'd1) & (state_2_load_reg_384 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        regIbvCountTx = grp_fu_165_p2;
    end else begin
        regIbvCountTx = regIbvCountTx_preg;
    end
end

always @ (*) begin
    if ((((tmp_155_i_reg_418 == 1'd1) & (state_2_load_reg_384 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_281_reg_388 == 1'd1) & (state_2_load_reg_384 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        regIbvCountTx_ap_vld = 1'b1;
    end else begin
        regIbvCountTx_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op68_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op82_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_ib2udpFifo_blk_n = tx_ib2udpFifo_full_n;
    end else begin
        tx_ib2udpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_227)) begin
        if ((ap_predicate_op82_write_state2 == 1'b1)) begin
            tx_ib2udpFifo_din = tx_shift2ibhFifo_read_reg_422;
        end else if ((state_2_load_reg_384 == 2'd1)) begin
            tx_ib2udpFifo_din = zext_ln174_fu_367_p1;
        end else if ((ap_predicate_op68_write_state2 == 1'b1)) begin
            tx_ib2udpFifo_din = zext_ln174_52_fu_344_p1;
        end else begin
            tx_ib2udpFifo_din = 'bx;
        end
    end else begin
        tx_ib2udpFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((state_2_load_reg_384 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op68_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op82_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_ib2udpFifo_write = 1'b1;
    end else begin
        tx_ib2udpFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op43_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        tx_ibhHeaderFifo_blk_n = tx_ibhHeaderFifo_empty_n;
    end else begin
        tx_ibhHeaderFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op43_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_ibhHeaderFifo_read = 1'b1;
    end else begin
        tx_ibhHeaderFifo_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_done_reg == 1'b0) & (ap_predicate_op34_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2ibhFifo_blk_n = tx_shift2ibhFifo_empty_n;
    end else begin
        tx_shift2ibhFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op34_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op9_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ibhFifo_read = 1'b1;
    end else begin
        tx_shift2ibhFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op43_read_state1 == 1'b1) & (tx_ibhHeaderFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)) | ((ap_predicate_op9_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_2_load_reg_384 == 2'd1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op68_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op82_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op43_read_state1 == 1'b1) & (tx_ibhHeaderFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)) | ((ap_predicate_op9_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_2_load_reg_384 == 2'd1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op68_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op82_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op43_read_state1 == 1'b1) & (tx_ibhHeaderFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)) | ((ap_predicate_op9_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_2_load_reg_384 == 2'd1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op68_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op82_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op43_read_state1 == 1'b1) & (tx_ibhHeaderFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)) | ((ap_predicate_op9_read_state1 == 1'b1) & (tx_shift2ibhFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((state_2_load_reg_384 == 2'd1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op68_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)) | ((ap_predicate_op82_write_state2 == 1'b1) & (tx_ib2udpFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_153 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_162 = ((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2) & (icmp_ln82_1_fu_196_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_184 = ((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2) & (icmp_ln82_1_fu_196_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_196 = ((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd3) & (grp_fu_152_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_227 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_141 = 'bx;

assign ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_132 = 'bx;

always @ (*) begin
    ap_predicate_op34_read_state1 = ((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd3));
end

always @ (*) begin
    ap_predicate_op43_read_state1 = ((tmp_i_nbreadreq_fu_104_p3 == 1'd1) & (state_2 == 2'd0));
end

always @ (*) begin
    ap_predicate_op68_write_state2 = ((tmp_i_281_reg_388 == 1'd1) & (state_2_load_reg_384 == 2'd2));
end

always @ (*) begin
    ap_predicate_op82_write_state2 = ((tmp_155_i_reg_418 == 1'd1) & (state_2_load_reg_384 == 2'd3));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((grp_nbreadreq_fu_90_p3 == 1'd1) & (state_2 == 2'd2));
end

assign currWord_data_V_fu_184_p1 = tx_shift2ibhFifo_dout[511:0];

assign grp_fu_152_p3 = tx_shift2ibhFifo_dout[1024'd576];

assign grp_fu_160_p2 = (header_idx_1 + 16'd1);

assign grp_fu_165_p2 = (validTx_V + 32'd1);

assign grp_nbreadreq_fu_90_p3 = tx_shift2ibhFifo_empty_n;

assign icmp_ln82_1_fu_196_p2 = ((shl_ln76_1_fu_188_p3 < 25'd96) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_258_p2 = ((shl_ln_fu_250_p3 < 25'd96) ? 1'b1 : 1'b0);

assign or_ln_fu_355_p3 = {{1'd1}, {ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_141}};

assign p_Result_12_fu_202_p5 = {{currWord_data_V_fu_184_p1[511:96]}, {header_header_V_1}};

assign p_Result_s_fu_264_p5 = {{ap_const_lv512_lc_2[511:96]}, {header_header_V_1}};

assign select_ln1973_cast_i_fu_236_p3 = ((xor_ln1973_fu_230_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign sext_ln174_fu_363_p1 = $signed(or_ln_fu_355_p3);

assign shl_ln76_1_fu_188_p3 = {{header_idx_1}, {9'd0}};

assign shl_ln_fu_250_p3 = {{header_idx_1}, {9'd0}};

assign state_2_load_load_fu_171_p1 = state_2;

assign tmp_i_nbreadreq_fu_104_p3 = tx_ibhHeaderFifo_empty_n;

assign tmp_s_fu_337_p3 = {{tmp_reg_405}, {ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_132}};

assign xor_ln1973_fu_230_p2 = (grp_fu_152_p3 ^ 1'd1);

assign zext_ln174_52_fu_344_p1 = tmp_s_fu_337_p3;

assign zext_ln174_fu_367_p1 = $unsigned(sext_ln174_fu_363_p1);

endmodule //rocev2_top_prepend_ibh_header_512_0_s
