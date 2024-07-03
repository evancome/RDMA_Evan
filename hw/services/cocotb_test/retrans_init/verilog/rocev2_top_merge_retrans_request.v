// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_merge_retrans_request (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx2retrans_insertMeta_dout,
        tx2retrans_insertMeta_num_data_valid,
        tx2retrans_insertMeta_fifo_cap,
        tx2retrans_insertMeta_empty_n,
        tx2retrans_insertMeta_read,
        tx2retrans_insertAddrLen_dout,
        tx2retrans_insertAddrLen_num_data_valid,
        tx2retrans_insertAddrLen_fifo_cap,
        tx2retrans_insertAddrLen_empty_n,
        tx2retrans_insertAddrLen_read,
        tx2retrans_insertRequest_din,
        tx2retrans_insertRequest_num_data_valid,
        tx2retrans_insertRequest_fifo_cap,
        tx2retrans_insertRequest_full_n,
        tx2retrans_insertRequest_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [95:0] tx2retrans_insertMeta_dout;
input  [1:0] tx2retrans_insertMeta_num_data_valid;
input  [1:0] tx2retrans_insertMeta_fifo_cap;
input   tx2retrans_insertMeta_empty_n;
output   tx2retrans_insertMeta_read;
input  [191:0] tx2retrans_insertAddrLen_dout;
input  [3:0] tx2retrans_insertAddrLen_num_data_valid;
input  [3:0] tx2retrans_insertAddrLen_fifo_cap;
input   tx2retrans_insertAddrLen_empty_n;
output   tx2retrans_insertAddrLen_read;
output  [319:0] tx2retrans_insertRequest_din;
input  [1:0] tx2retrans_insertRequest_num_data_valid;
input  [1:0] tx2retrans_insertRequest_fifo_cap;
input   tx2retrans_insertRequest_full_n;
output   tx2retrans_insertRequest_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx2retrans_insertMeta_read;
reg tx2retrans_insertAddrLen_read;
reg tx2retrans_insertRequest_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_56_p3;
wire   [0:0] tmp_i_285_nbreadreq_fu_64_p3;
reg    ap_predicate_op20_read_state1;
reg    ap_predicate_op21_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_151;
reg   [0:0] tmp_i_285_reg_155;
reg    ap_predicate_op29_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    tx2retrans_insertMeta_blk_n;
wire    ap_block_pp0_stage0;
reg    tx2retrans_insertAddrLen_blk_n;
reg    tx2retrans_insertRequest_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] trunc_ln2157_fu_91_p1;
reg   [15:0] trunc_ln2157_reg_159;
reg   [23:0] tmp_307_i3_reg_164;
reg   [31:0] tmp_4_reg_169;
reg   [3:0] tmp_s_reg_174;
wire   [160:0] trunc_ln174_fu_125_p1;
reg   [160:0] trunc_ln174_reg_179;
reg    ap_block_pp0_stage0_01001;
wire   [299:0] or_ln174_s_fu_129_p10;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_285_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_307_i3_reg_164 <= {{tx2retrans_insertMeta_dout[55:32]}};
        tmp_4_reg_169 <= {{tx2retrans_insertMeta_dout[95:64]}};
        tmp_s_reg_174 <= {{tx2retrans_insertAddrLen_dout[171:168]}};
        trunc_ln174_reg_179 <= trunc_ln174_fu_125_p1;
        trunc_ln2157_reg_159 <= trunc_ln2157_fu_91_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_285_reg_155 <= tmp_i_285_nbreadreq_fu_64_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_151 <= tmp_i_nbreadreq_fu_56_p3;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertAddrLen_blk_n = tx2retrans_insertAddrLen_empty_n;
    end else begin
        tx2retrans_insertAddrLen_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertAddrLen_read = 1'b1;
    end else begin
        tx2retrans_insertAddrLen_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertMeta_blk_n = tx2retrans_insertMeta_empty_n;
    end else begin
        tx2retrans_insertMeta_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertMeta_read = 1'b1;
    end else begin
        tx2retrans_insertMeta_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op29_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertRequest_blk_n = tx2retrans_insertRequest_full_n;
    end else begin
        tx2retrans_insertRequest_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op29_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx2retrans_insertRequest_write = 1'b1;
    end else begin
        tx2retrans_insertRequest_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (tx2retrans_insertRequest_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx2retrans_insertAddrLen_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (tx2retrans_insertMeta_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (tx2retrans_insertRequest_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx2retrans_insertAddrLen_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (tx2retrans_insertMeta_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (tx2retrans_insertRequest_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx2retrans_insertAddrLen_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (tx2retrans_insertMeta_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx2retrans_insertAddrLen_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (tx2retrans_insertMeta_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op29_write_state2 == 1'b1) & (tx2retrans_insertRequest_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op20_read_state1 = ((tmp_i_285_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op21_read_state1 = ((tmp_i_285_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op29_write_state2 = ((tmp_i_285_reg_155 == 1'd1) & (tmp_i_reg_151 == 1'd1));
end

assign or_ln174_s_fu_129_p10 = {{{{{{{{{tmp_s_reg_174}, {7'd0}}, {trunc_ln174_reg_179}}, {32'd0}}, {tmp_4_reg_169}}, {8'd0}}, {tmp_307_i3_reg_164}}, {16'd0}}, {trunc_ln2157_reg_159}};

assign tmp_i_285_nbreadreq_fu_64_p3 = tx2retrans_insertAddrLen_empty_n;

assign tmp_i_nbreadreq_fu_56_p3 = tx2retrans_insertMeta_empty_n;

assign trunc_ln174_fu_125_p1 = tx2retrans_insertAddrLen_dout[160:0];

assign trunc_ln2157_fu_91_p1 = tx2retrans_insertMeta_dout[15:0];

assign tx2retrans_insertRequest_din = or_ln174_s_fu_129_p10;

endmodule //rocev2_top_merge_retrans_request
