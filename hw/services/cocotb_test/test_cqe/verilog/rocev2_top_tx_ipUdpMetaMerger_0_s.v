// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_tx_ipUdpMetaMerger_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_connTable2ibh_rsp_dout,
        tx_connTable2ibh_rsp_num_data_valid,
        tx_connTable2ibh_rsp_fifo_cap,
        tx_connTable2ibh_rsp_empty_n,
        tx_connTable2ibh_rsp_read,
        tx_lengthFifo_dout,
        tx_lengthFifo_num_data_valid,
        tx_lengthFifo_fifo_cap,
        tx_lengthFifo_empty_n,
        tx_lengthFifo_read,
        tx_ipUdpMetaFifo_din,
        tx_ipUdpMetaFifo_num_data_valid,
        tx_ipUdpMetaFifo_fifo_cap,
        tx_ipUdpMetaFifo_full_n,
        tx_ipUdpMetaFifo_write,
        tx_dstQpFifo_din,
        tx_dstQpFifo_num_data_valid,
        tx_dstQpFifo_fifo_cap,
        tx_dstQpFifo_full_n,
        tx_dstQpFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [383:0] tx_connTable2ibh_rsp_dout;
input  [3:0] tx_connTable2ibh_rsp_num_data_valid;
input  [3:0] tx_connTable2ibh_rsp_fifo_cap;
input   tx_connTable2ibh_rsp_empty_n;
output   tx_connTable2ibh_rsp_read;
input  [15:0] tx_lengthFifo_dout;
input  [2:0] tx_lengthFifo_num_data_valid;
input  [2:0] tx_lengthFifo_fifo_cap;
input   tx_lengthFifo_empty_n;
output   tx_lengthFifo_read;
output  [255:0] tx_ipUdpMetaFifo_din;
input  [1:0] tx_ipUdpMetaFifo_num_data_valid;
input  [1:0] tx_ipUdpMetaFifo_fifo_cap;
input   tx_ipUdpMetaFifo_full_n;
output   tx_ipUdpMetaFifo_write;
output  [23:0] tx_dstQpFifo_din;
input  [1:0] tx_dstQpFifo_num_data_valid;
input  [1:0] tx_dstQpFifo_fifo_cap;
input   tx_dstQpFifo_full_n;
output   tx_dstQpFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_connTable2ibh_rsp_read;
reg tx_lengthFifo_read;
reg tx_ipUdpMetaFifo_write;
reg tx_dstQpFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_52_p3;
wire   [0:0] tmp_i_171_nbreadreq_fu_60_p3;
reg    ap_predicate_op24_read_state1;
reg    ap_predicate_op27_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_138;
reg   [0:0] tmp_i_171_reg_142;
reg    ap_predicate_op32_write_state2;
reg    ap_predicate_op33_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    tx_connTable2ibh_rsp_blk_n;
wire    ap_block_pp0_stage0;
reg    tx_lengthFifo_blk_n;
reg    tx_ipUdpMetaFifo_blk_n;
reg    tx_dstQpFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [23:0] connMeta_remote_qpn_V_fu_94_p1;
reg   [23:0] connMeta_remote_qpn_V_reg_146;
reg   [127:0] connMeta_remote_ip_address_V_reg_151;
reg   [15:0] len_reg_156;
reg   [15:0] tmp_15_i6_reg_161;
reg    ap_block_pp0_stage0_01001;
wire   [175:0] tmp_16_i_fu_118_p5;
wire   [175:0] or_ln2547_fu_127_p2;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_171_nbreadreq_fu_60_p3 == 1'd1) & (tmp_i_nbreadreq_fu_52_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        connMeta_remote_ip_address_V_reg_151 <= {{tx_connTable2ibh_rsp_dout[255:128]}};
        connMeta_remote_qpn_V_reg_146 <= connMeta_remote_qpn_V_fu_94_p1;
        tmp_15_i6_reg_161 <= {{tx_connTable2ibh_rsp_dout[271:256]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op27_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        len_reg_156 <= tx_lengthFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_52_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_171_reg_142 <= tmp_i_171_nbreadreq_fu_60_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_138 <= tmp_i_nbreadreq_fu_52_p3;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_connTable2ibh_rsp_blk_n = tx_connTable2ibh_rsp_empty_n;
    end else begin
        tx_connTable2ibh_rsp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_connTable2ibh_rsp_read = 1'b1;
    end else begin
        tx_connTable2ibh_rsp_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op33_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_dstQpFifo_blk_n = tx_dstQpFifo_full_n;
    end else begin
        tx_dstQpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op33_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_dstQpFifo_write = 1'b1;
    end else begin
        tx_dstQpFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op32_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_ipUdpMetaFifo_blk_n = tx_ipUdpMetaFifo_full_n;
    end else begin
        tx_ipUdpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op32_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_ipUdpMetaFifo_write = 1'b1;
    end else begin
        tx_ipUdpMetaFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op27_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_lengthFifo_blk_n = tx_lengthFifo_empty_n;
    end else begin
        tx_lengthFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op27_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_lengthFifo_read = 1'b1;
    end else begin
        tx_lengthFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_write_state2 == 1'b1) & (tx_dstQpFifo_full_n == 1'b0)) | ((ap_predicate_op32_write_state2 == 1'b1) & (tx_ipUdpMetaFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op27_read_state1 == 1'b1) & (tx_lengthFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (tx_connTable2ibh_rsp_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_write_state2 == 1'b1) & (tx_dstQpFifo_full_n == 1'b0)) | ((ap_predicate_op32_write_state2 == 1'b1) & (tx_ipUdpMetaFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op27_read_state1 == 1'b1) & (tx_lengthFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (tx_connTable2ibh_rsp_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_write_state2 == 1'b1) & (tx_dstQpFifo_full_n == 1'b0)) | ((ap_predicate_op32_write_state2 == 1'b1) & (tx_ipUdpMetaFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op27_read_state1 == 1'b1) & (tx_lengthFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (tx_connTable2ibh_rsp_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op27_read_state1 == 1'b1) & (tx_lengthFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (tx_connTable2ibh_rsp_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op33_write_state2 == 1'b1) & (tx_dstQpFifo_full_n == 1'b0)) | ((ap_predicate_op32_write_state2 == 1'b1) & (tx_ipUdpMetaFifo_full_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op24_read_state1 = ((tmp_i_171_nbreadreq_fu_60_p3 == 1'd1) & (tmp_i_nbreadreq_fu_52_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op27_read_state1 = ((tmp_i_171_nbreadreq_fu_60_p3 == 1'd1) & (tmp_i_nbreadreq_fu_52_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op32_write_state2 = ((tmp_i_171_reg_142 == 1'd1) & (tmp_i_reg_138 == 1'd1));
end

always @ (*) begin
    ap_predicate_op33_write_state2 = ((tmp_i_171_reg_142 == 1'd1) & (tmp_i_reg_138 == 1'd1));
end

assign connMeta_remote_qpn_V_fu_94_p1 = tx_connTable2ibh_rsp_dout[23:0];

assign or_ln2547_fu_127_p2 = (tmp_16_i_fu_118_p5 | 176'd1630292819918216178453027744205601501085696);

assign tmp_16_i_fu_118_p5 = {{{{len_reg_156}, {tmp_15_i6_reg_161}}, {16'd0}}, {connMeta_remote_ip_address_V_reg_151}};

assign tmp_i_171_nbreadreq_fu_60_p3 = tx_lengthFifo_empty_n;

assign tmp_i_nbreadreq_fu_52_p3 = tx_connTable2ibh_rsp_empty_n;

assign tx_dstQpFifo_din = connMeta_remote_qpn_V_reg_146;

assign tx_ipUdpMetaFifo_din = or_ln2547_fu_127_p2;

endmodule //rocev2_top_tx_ipUdpMetaMerger_0_s
