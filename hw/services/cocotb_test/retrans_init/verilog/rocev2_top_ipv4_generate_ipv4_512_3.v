// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_ipv4_generate_ipv4_512_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        local_ip_address_dout,
        local_ip_address_num_data_valid,
        local_ip_address_fifo_cap,
        local_ip_address_empty_n,
        local_ip_address_read,
        tx_shift2ipv4Fifo_dout,
        tx_shift2ipv4Fifo_num_data_valid,
        tx_shift2ipv4Fifo_fifo_cap,
        tx_shift2ipv4Fifo_empty_n,
        tx_shift2ipv4Fifo_read,
        tx_udp2ipMetaFifo_dout,
        tx_udp2ipMetaFifo_num_data_valid,
        tx_udp2ipMetaFifo_fifo_cap,
        tx_udp2ipMetaFifo_empty_n,
        tx_udp2ipMetaFifo_read,
        tx_ip2crcFifo_din,
        tx_ip2crcFifo_num_data_valid,
        tx_ip2crcFifo_fifo_cap,
        tx_ip2crcFifo_full_n,
        tx_ip2crcFifo_write
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
input  [127:0] local_ip_address_dout;
input  [2:0] local_ip_address_num_data_valid;
input  [2:0] local_ip_address_fifo_cap;
input   local_ip_address_empty_n;
output   local_ip_address_read;
input  [1023:0] tx_shift2ipv4Fifo_dout;
input  [3:0] tx_shift2ipv4Fifo_num_data_valid;
input  [3:0] tx_shift2ipv4Fifo_fifo_cap;
input   tx_shift2ipv4Fifo_empty_n;
output   tx_shift2ipv4Fifo_read;
input  [63:0] tx_udp2ipMetaFifo_dout;
input  [1:0] tx_udp2ipMetaFifo_num_data_valid;
input  [1:0] tx_udp2ipMetaFifo_fifo_cap;
input   tx_udp2ipMetaFifo_empty_n;
output   tx_udp2ipMetaFifo_read;
output  [1023:0] tx_ip2crcFifo_din;
input  [1:0] tx_ip2crcFifo_num_data_valid;
input  [1:0] tx_ip2crcFifo_fifo_cap;
input   tx_ip2crcFifo_full_n;
output   tx_ip2crcFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg local_ip_address_read;
reg tx_shift2ipv4Fifo_read;
reg tx_udp2ipMetaFifo_read;
reg[1023:0] tx_ip2crcFifo_din;
reg tx_ip2crcFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [1:0] gi_state_load_load_fu_204_p1;
wire   [0:0] grp_nbreadreq_fu_132_p3;
reg    ap_predicate_op25_read_state1;
reg    ap_predicate_op50_read_state1;
wire   [0:0] tmp_i_i_nbreadreq_fu_146_p3;
reg    ap_predicate_op59_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] gi_state_load_reg_464;
reg   [0:0] tmp_i_i_288_reg_468;
reg    ap_predicate_op78_write_state2;
reg   [0:0] tmp_239_i_i_reg_498;
reg    ap_predicate_op86_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [1:0] gi_state;
reg   [15:0] header_idx_2;
reg   [159:0] header_header_V_2;
reg    local_ip_address_blk_n;
wire    ap_block_pp0_stage0;
reg    tx_udp2ipMetaFifo_blk_n;
reg    tx_ip2crcFifo_blk_n;
reg    tx_shift2ipv4Fifo_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [511:0] currWord_data_V_fu_217_p1;
wire   [511:0] p_Result_29_fu_235_p5;
wire   [0:0] icmp_ln82_2_fu_229_p2;
reg   [64:0] tmp_reg_485;
wire   [511:0] p_Result_28_fu_297_p5;
wire   [0:0] icmp_ln82_fu_291_p2;
reg   [1023:0] tx_shift2ipv4Fifo_read_reg_502;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_7_reg_167;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_7_reg_167;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_5_reg_176;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_5_reg_176;
wire   [1:0] select_ln222_cast_i_i_fu_269_p3;
wire   [0:0] grp_fu_187_p3;
wire   [15:0] grp_fu_195_p2;
wire   [159:0] p_Result_13_fu_411_p5;
wire   [1023:0] zext_ln174_84_fu_442_p1;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_fu_459_p1;
wire   [24:0] shl_ln76_2_fu_221_p3;
wire   [0:0] xor_ln222_fu_263_p2;
wire   [24:0] shl_ln_fu_283_p3;
wire   [15:0] meta_length_V_1_fu_331_p4;
wire   [15:0] len_V_fu_347_p2;
wire   [7:0] trunc_ln674_fu_363_p1;
wire   [7:0] tmp_240_i_i9_fu_353_p4;
wire   [15:0] p_Result_s_fu_367_p3;
wire   [159:0] p_Result_25_fu_375_p5;
wire   [31:0] meta_their_address_V_fu_327_p1;
wire   [159:0] p_Result_26_fu_387_p5;
wire   [31:0] trunc_ln232_fu_200_p1;
wire   [159:0] p_Result_27_fu_399_p5;
wire   [576:0] tmp_s_fu_435_p3;
wire   [512:0] or_ln_fu_447_p3;
wire  signed [543:0] sext_ln174_fu_455_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_160;
reg    ap_condition_169;
reg    ap_condition_191;
reg    ap_condition_203;
reg    ap_condition_226;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 gi_state = 2'd0;
#0 header_idx_2 = 16'd0;
#0 header_header_V_2 = 160'd1180591620717411303493;
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
    if ((1'b1 == ap_condition_160)) begin
        if (((gi_state_load_load_fu_204_p1 == 2'd1) & (icmp_ln82_fu_291_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_5_reg_176 <= p_Result_28_fu_297_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_5_reg_176 <= ap_phi_reg_pp0_iter0_currWord_data_V_5_reg_176;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_160)) begin
        if ((1'b1 == ap_condition_191)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_7_reg_167 <= currWord_data_V_fu_217_p1;
        end else if ((1'b1 == ap_condition_169)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_7_reg_167 <= p_Result_29_fu_235_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_7_reg_167 <= ap_phi_reg_pp0_iter0_currWord_data_V_7_reg_167;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_160)) begin
        if (((tmp_i_i_nbreadreq_fu_146_p3 == 1'd1) & (gi_state == 2'd0))) begin
            gi_state <= 2'd2;
        end else if ((1'b1 == ap_condition_203)) begin
            gi_state <= 2'd0;
        end else if ((gi_state_load_load_fu_204_p1 == 2'd1)) begin
            gi_state <= 2'd2;
        end else if (((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2))) begin
            gi_state <= select_ln222_cast_i_i_fu_269_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_nbreadreq_fu_146_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx_2 <= 16'd0;
    end else if ((((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_2_fu_229_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((gi_state_load_load_fu_204_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_291_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        header_idx_2 <= grp_fu_195_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gi_state_load_reg_464 <= gi_state;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_nbreadreq_fu_146_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V_2 <= p_Result_13_fu_411_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_239_i_i_reg_498 <= grp_nbreadreq_fu_132_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_i_288_reg_468 <= grp_nbreadreq_fu_132_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_485 <= {{tx_shift2ipv4Fifo_dout[576:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op50_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_shift2ipv4Fifo_read_reg_502 <= tx_shift2ipv4Fifo_dout;
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
    if (((ap_done_reg == 1'b0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        local_ip_address_blk_n = local_ip_address_empty_n;
    end else begin
        local_ip_address_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        local_ip_address_read = 1'b1;
    end else begin
        local_ip_address_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op78_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_ip2crcFifo_blk_n = tx_ip2crcFifo_full_n;
    end else begin
        tx_ip2crcFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_226)) begin
        if ((ap_predicate_op86_write_state2 == 1'b1)) begin
            tx_ip2crcFifo_din = tx_shift2ipv4Fifo_read_reg_502;
        end else if ((gi_state_load_reg_464 == 2'd1)) begin
            tx_ip2crcFifo_din = zext_ln174_fu_459_p1;
        end else if ((ap_predicate_op78_write_state2 == 1'b1)) begin
            tx_ip2crcFifo_din = zext_ln174_84_fu_442_p1;
        end else begin
            tx_ip2crcFifo_din = 'bx;
        end
    end else begin
        tx_ip2crcFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op78_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_ip2crcFifo_write = 1'b1;
    end else begin
        tx_ip2crcFifo_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_done_reg == 1'b0) & (ap_predicate_op50_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2ipv4Fifo_blk_n = tx_shift2ipv4Fifo_empty_n;
    end else begin
        tx_shift2ipv4Fifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op50_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ipv4Fifo_read = 1'b1;
    end else begin
        tx_shift2ipv4Fifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op59_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        tx_udp2ipMetaFifo_blk_n = tx_udp2ipMetaFifo_empty_n;
    end else begin
        tx_udp2ipMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op59_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_udp2ipMetaFifo_read = 1'b1;
    end else begin
        tx_udp2ipMetaFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (local_ip_address_empty_n == 1'b0) | ((ap_predicate_op59_read_state1 == 1'b1) & (tx_udp2ipMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op50_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op78_write_state2 == 1'b1) & (tx_ip2crcFifo_full_n == 1'b0)) | ((tx_ip2crcFifo_full_n == 1'b0) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (tx_ip2crcFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (local_ip_address_empty_n == 1'b0) | ((ap_predicate_op59_read_state1 == 1'b1) & (tx_udp2ipMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op50_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op78_write_state2 == 1'b1) & (tx_ip2crcFifo_full_n == 1'b0)) | ((tx_ip2crcFifo_full_n == 1'b0) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (tx_ip2crcFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (local_ip_address_empty_n == 1'b0) | ((ap_predicate_op59_read_state1 == 1'b1) & (tx_udp2ipMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op50_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op78_write_state2 == 1'b1) & (tx_ip2crcFifo_full_n == 1'b0)) | ((tx_ip2crcFifo_full_n == 1'b0) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (tx_ip2crcFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | (local_ip_address_empty_n == 1'b0) | ((ap_predicate_op59_read_state1 == 1'b1) & (tx_udp2ipMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op50_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op78_write_state2 == 1'b1) & (tx_ip2crcFifo_full_n == 1'b0)) | ((tx_ip2crcFifo_full_n == 1'b0) & (ap_predicate_op86_write_state2 == 1'b1)) | ((gi_state_load_reg_464 == 2'd1) & (tx_ip2crcFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_160 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_169 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2) & (icmp_ln82_2_fu_229_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_191 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2) & (icmp_ln82_2_fu_229_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_203 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd3) & (grp_fu_187_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_226 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_currWord_data_V_5_reg_176 = 'bx;

assign ap_phi_reg_pp0_iter0_currWord_data_V_7_reg_167 = 'bx;

always @ (*) begin
    ap_predicate_op25_read_state1 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd2));
end

always @ (*) begin
    ap_predicate_op50_read_state1 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (gi_state == 2'd3));
end

always @ (*) begin
    ap_predicate_op59_read_state1 = ((tmp_i_i_nbreadreq_fu_146_p3 == 1'd1) & (gi_state == 2'd0));
end

always @ (*) begin
    ap_predicate_op78_write_state2 = ((tmp_i_i_288_reg_468 == 1'd1) & (gi_state_load_reg_464 == 2'd2));
end

always @ (*) begin
    ap_predicate_op86_write_state2 = ((gi_state_load_reg_464 == 2'd3) & (tmp_239_i_i_reg_498 == 1'd1));
end

assign currWord_data_V_fu_217_p1 = tx_shift2ipv4Fifo_dout[511:0];

assign gi_state_load_load_fu_204_p1 = gi_state;

assign grp_fu_187_p3 = tx_shift2ipv4Fifo_dout[1024'd576];

assign grp_fu_195_p2 = (header_idx_2 + 16'd1);

assign grp_nbreadreq_fu_132_p3 = tx_shift2ipv4Fifo_empty_n;

assign icmp_ln82_2_fu_229_p2 = ((shl_ln76_2_fu_221_p3 < 25'd160) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_291_p2 = ((shl_ln_fu_283_p3 < 25'd160) ? 1'b1 : 1'b0);

assign len_V_fu_347_p2 = (meta_length_V_1_fu_331_p4 + 16'd20);

assign meta_length_V_1_fu_331_p4 = {{tx_udp2ipMetaFifo_dout[47:32]}};

assign meta_their_address_V_fu_327_p1 = tx_udp2ipMetaFifo_dout[31:0];

assign or_ln_fu_447_p3 = {{1'd1}, {ap_phi_reg_pp0_iter1_currWord_data_V_5_reg_176}};

assign p_Result_13_fu_411_p5 = {{p_Result_27_fu_399_p5[159:80]}, {8'd17}, {p_Result_27_fu_399_p5[71:0]}};

assign p_Result_25_fu_375_p5 = {{header_header_V_2[159:32]}, {p_Result_s_fu_367_p3}, {header_header_V_2[15:0]}};

assign p_Result_26_fu_387_p5 = {{meta_their_address_V_fu_327_p1}, {p_Result_25_fu_375_p5[127:0]}};

assign p_Result_27_fu_399_p5 = {{p_Result_26_fu_387_p5[159:128]}, {trunc_ln232_fu_200_p1}, {p_Result_26_fu_387_p5[95:0]}};

assign p_Result_28_fu_297_p5 = {{ap_const_lv512_lc_2[511:160]}, {header_header_V_2}};

assign p_Result_29_fu_235_p5 = {{currWord_data_V_fu_217_p1[511:160]}, {header_header_V_2}};

assign p_Result_s_fu_367_p3 = {{trunc_ln674_fu_363_p1}, {tmp_240_i_i9_fu_353_p4}};

assign select_ln222_cast_i_i_fu_269_p3 = ((xor_ln222_fu_263_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign sext_ln174_fu_455_p1 = $signed(or_ln_fu_447_p3);

assign shl_ln76_2_fu_221_p3 = {{header_idx_2}, {9'd0}};

assign shl_ln_fu_283_p3 = {{header_idx_2}, {9'd0}};

assign tmp_240_i_i9_fu_353_p4 = {{len_V_fu_347_p2[15:8]}};

assign tmp_i_i_nbreadreq_fu_146_p3 = tx_udp2ipMetaFifo_empty_n;

assign tmp_s_fu_435_p3 = {{tmp_reg_485}, {ap_phi_reg_pp0_iter1_currWord_data_V_7_reg_167}};

assign trunc_ln232_fu_200_p1 = local_ip_address_dout[31:0];

assign trunc_ln674_fu_363_p1 = len_V_fu_347_p2[7:0];

assign xor_ln222_fu_263_p2 = (grp_fu_187_p3 ^ 1'd1);

assign zext_ln174_84_fu_442_p1 = tmp_s_fu_435_p3;

assign zext_ln174_fu_459_p1 = $unsigned(sext_ln174_fu_455_p1);

endmodule //rocev2_top_ipv4_generate_ipv4_512_3