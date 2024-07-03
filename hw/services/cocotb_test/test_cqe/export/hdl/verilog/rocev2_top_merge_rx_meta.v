// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_merge_rx_meta (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rx_ip2udpMetaFifo_dout,
        rx_ip2udpMetaFifo_num_data_valid,
        rx_ip2udpMetaFifo_fifo_cap,
        rx_ip2udpMetaFifo_empty_n,
        rx_ip2udpMetaFifo_read,
        rx_udpMetaFifo_dout,
        rx_udpMetaFifo_num_data_valid,
        rx_udpMetaFifo_fifo_cap,
        rx_udpMetaFifo_empty_n,
        rx_udpMetaFifo_read,
        rx_ipUdpMetaFifo_din,
        rx_ipUdpMetaFifo_num_data_valid,
        rx_ipUdpMetaFifo_fifo_cap,
        rx_ipUdpMetaFifo_full_n,
        rx_ipUdpMetaFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] rx_ip2udpMetaFifo_dout;
input  [1:0] rx_ip2udpMetaFifo_num_data_valid;
input  [1:0] rx_ip2udpMetaFifo_fifo_cap;
input   rx_ip2udpMetaFifo_empty_n;
output   rx_ip2udpMetaFifo_read;
input  [48:0] rx_udpMetaFifo_dout;
input  [1:0] rx_udpMetaFifo_num_data_valid;
input  [1:0] rx_udpMetaFifo_fifo_cap;
input   rx_udpMetaFifo_empty_n;
output   rx_udpMetaFifo_read;
output  [255:0] rx_ipUdpMetaFifo_din;
input  [3:0] rx_ipUdpMetaFifo_num_data_valid;
input  [3:0] rx_ipUdpMetaFifo_fifo_cap;
input   rx_ipUdpMetaFifo_full_n;
output   rx_ipUdpMetaFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rx_ip2udpMetaFifo_read;
reg rx_udpMetaFifo_read;
reg rx_ipUdpMetaFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_38_p3;
wire   [0:0] tmp_i_299_nbreadreq_fu_46_p3;
reg    ap_predicate_op20_read_state1;
reg    ap_predicate_op22_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_102;
reg   [0:0] tmp_i_299_reg_106;
reg   [0:0] meta1_valid_reg_115;
reg    ap_predicate_op29_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    rx_ip2udpMetaFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    rx_udpMetaFifo_blk_n;
reg    rx_ipUdpMetaFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] meta0_their_address_V_fu_73_p1;
reg   [31:0] meta0_their_address_V_reg_110;
wire   [0:0] meta1_valid_fu_77_p3;
wire   [47:0] trunc_ln193_fu_85_p1;
reg   [47:0] trunc_ln193_reg_119;
reg    ap_block_pp0_stage0_01001;
wire   [175:0] tmp_322_i_fu_89_p4;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_299_nbreadreq_fu_46_p3 == 1'd1) & (tmp_i_nbreadreq_fu_38_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        meta0_their_address_V_reg_110 <= meta0_their_address_V_fu_73_p1;
        meta1_valid_reg_115 <= rx_udpMetaFifo_dout[32'd48];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_38_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_299_reg_106 <= tmp_i_299_nbreadreq_fu_46_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_102 <= tmp_i_nbreadreq_fu_38_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_299_nbreadreq_fu_46_p3 == 1'd1) & (tmp_i_nbreadreq_fu_38_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (meta1_valid_fu_77_p3 == 1'd1))) begin
        trunc_ln193_reg_119 <= trunc_ln193_fu_85_p1;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ip2udpMetaFifo_blk_n = rx_ip2udpMetaFifo_empty_n;
    end else begin
        rx_ip2udpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ip2udpMetaFifo_read = 1'b1;
    end else begin
        rx_ip2udpMetaFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op29_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ipUdpMetaFifo_blk_n = rx_ipUdpMetaFifo_full_n;
    end else begin
        rx_ipUdpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op29_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ipUdpMetaFifo_write = 1'b1;
    end else begin
        rx_ipUdpMetaFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udpMetaFifo_blk_n = rx_udpMetaFifo_empty_n;
    end else begin
        rx_udpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op22_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udpMetaFifo_read = 1'b1;
    end else begin
        rx_udpMetaFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (rx_ipUdpMetaFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op22_read_state1 == 1'b1) & (rx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (rx_ip2udpMetaFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (rx_ipUdpMetaFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op22_read_state1 == 1'b1) & (rx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (rx_ip2udpMetaFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op29_write_state2 == 1'b1) & (rx_ipUdpMetaFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op22_read_state1 == 1'b1) & (rx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (rx_ip2udpMetaFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op22_read_state1 == 1'b1) & (rx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (rx_ip2udpMetaFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op29_write_state2 == 1'b1) & (rx_ipUdpMetaFifo_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op20_read_state1 = ((tmp_i_299_nbreadreq_fu_46_p3 == 1'd1) & (tmp_i_nbreadreq_fu_38_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op22_read_state1 = ((tmp_i_299_nbreadreq_fu_46_p3 == 1'd1) & (tmp_i_nbreadreq_fu_38_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op29_write_state2 = ((meta1_valid_reg_115 == 1'd1) & (tmp_i_299_reg_106 == 1'd1) & (tmp_i_reg_102 == 1'd1));
end

assign meta0_their_address_V_fu_73_p1 = rx_ip2udpMetaFifo_dout[31:0];

assign meta1_valid_fu_77_p3 = rx_udpMetaFifo_dout[32'd48];

assign rx_ipUdpMetaFifo_din = tmp_322_i_fu_89_p4;

assign tmp_322_i_fu_89_p4 = {{{trunc_ln193_reg_119}, {96'd0}}, {meta0_their_address_V_reg_110}};

assign tmp_i_299_nbreadreq_fu_46_p3 = rx_udpMetaFifo_empty_n;

assign tmp_i_nbreadreq_fu_38_p3 = rx_ip2udpMetaFifo_empty_n;

assign trunc_ln193_fu_85_p1 = rx_udpMetaFifo_dout[47:0];

endmodule //rocev2_top_merge_rx_meta
