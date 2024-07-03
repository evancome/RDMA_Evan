// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_udp_lshiftWordByOctet_512_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_ib2udpFifo_dout,
        tx_ib2udpFifo_num_data_valid,
        tx_ib2udpFifo_fifo_cap,
        tx_ib2udpFifo_empty_n,
        tx_ib2udpFifo_read,
        tx_shift2udpFifo_din,
        tx_shift2udpFifo_num_data_valid,
        tx_shift2udpFifo_fifo_cap,
        tx_shift2udpFifo_full_n,
        tx_shift2udpFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] tx_ib2udpFifo_dout;
input  [1:0] tx_ib2udpFifo_num_data_valid;
input  [1:0] tx_ib2udpFifo_fifo_cap;
input   tx_ib2udpFifo_empty_n;
output   tx_ib2udpFifo_read;
output  [1023:0] tx_shift2udpFifo_din;
input  [1:0] tx_shift2udpFifo_num_data_valid;
input  [1:0] tx_shift2udpFifo_fifo_cap;
input   tx_shift2udpFifo_full_n;
output   tx_shift2udpFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_ib2udpFifo_read;
reg[1023:0] tx_shift2udpFifo_din;
reg tx_shift2udpFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] ls_writeRemainder_load_load_fu_144_p1;
wire   [0:0] tmp_5_i_nbreadreq_fu_84_p3;
reg    ap_predicate_op18_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] ls_writeRemainder_load_reg_327;
reg   [0:0] tmp_5_i_reg_331;
reg    ap_predicate_op47_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ls_writeRemainder;
reg   [511:0] prevWord_data_V_6;
reg   [63:0] prevWord_keep_V_4;
reg   [0:0] ls_firstWord;
reg    tx_shift2udpFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    tx_ib2udpFifo_blk_n;
reg   [63:0] reg_136;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] reg_140;
wire   [447:0] trunc_ln674_fu_180_p1;
reg   [447:0] trunc_ln674_reg_338;
reg   [55:0] tmp_7_i7_reg_344;
wire   [0:0] sendWord_last_V_fu_204_p2;
reg   [0:0] sendWord_last_V_reg_350;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_105;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_105;
wire   [0:0] currWord_last_V_fu_172_p3;
wire   [0:0] xor_ln947_fu_222_p2;
wire   [511:0] currWord_data_V_fu_158_p1;
wire   [1023:0] zext_ln174_2_fu_299_p1;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_fu_322_p1;
wire   [7:0] tmp_8_i8_fu_194_p4;
wire   [511:0] p_Result_s_fu_244_p3;
wire   [511:0] p_Result_2_fu_258_p3;
wire   [63:0] p_Result_1_fu_251_p3;
wire   [63:0] p_Result_3_fu_265_p3;
wire   [63:0] select_ln1070_fu_280_p3;
wire   [511:0] sendWord_data_V_2_fu_272_p3;
wire   [577:0] or_ln174_6_i_fu_288_p5;
wire   [576:0] zext_ln174_cast_fu_310_p5;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_131;
reg    ap_condition_135;
reg    ap_condition_110;
reg    ap_condition_156;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ls_writeRemainder = 1'd0;
#0 prevWord_data_V_6 = 512'd0;
#0 prevWord_keep_V_4 = 64'd0;
#0 ls_firstWord = 1'd1;
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
    if ((1'b1 == ap_condition_110)) begin
        if ((1'b1 == ap_condition_135)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_105 <= 1'd0;
        end else if ((1'b1 == ap_condition_131)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_105 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_105 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_105;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_110)) begin
        if ((ls_writeRemainder_load_load_fu_144_p1 == 1'd1)) begin
            ls_writeRemainder <= 1'd0;
        end else if ((1'b1 == ap_condition_131)) begin
            ls_writeRemainder <= xor_ln947_fu_222_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_5_i_reg_331 == 1'd1) & (ls_writeRemainder_load_reg_327 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_105;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_writeRemainder_load_reg_327 <= ls_writeRemainder;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prevWord_data_V_6 <= currWord_data_V_fu_158_p1;
        prevWord_keep_V_4 <= {{tx_ib2udpFifo_dout[575:512]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_load_load_fu_144_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_136 <= {{prevWord_data_V_6[511:448]}};
        reg_140 <= {{prevWord_keep_V_4[63:56]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sendWord_last_V_reg_350 <= sendWord_last_V_fu_204_p2;
        tmp_7_i7_reg_344 <= {{tx_ib2udpFifo_dout[567:512]}};
        trunc_ln674_reg_338 <= trunc_ln674_fu_180_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_5_i_reg_331 <= tmp_5_i_nbreadreq_fu_84_p3;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_ib2udpFifo_blk_n = tx_ib2udpFifo_empty_n;
    end else begin
        tx_ib2udpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_ib2udpFifo_read = 1'b1;
    end else begin
        tx_ib2udpFifo_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_load_reg_327 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tx_shift2udpFifo_blk_n = tx_shift2udpFifo_full_n;
    end else begin
        tx_shift2udpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_156)) begin
        if ((ls_writeRemainder_load_reg_327 == 1'd1)) begin
            tx_shift2udpFifo_din = zext_ln174_fu_322_p1;
        end else if ((ap_predicate_op47_write_state2 == 1'b1)) begin
            tx_shift2udpFifo_din = zext_ln174_2_fu_299_p1;
        end else begin
            tx_shift2udpFifo_din = 'bx;
        end
    end else begin
        tx_shift2udpFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_load_reg_327 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tx_shift2udpFifo_write = 1'b1;
    end else begin
        tx_shift2udpFifo_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_load_reg_327 == 1'd1) & (tx_shift2udpFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_shift2udpFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_ib2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_load_reg_327 == 1'd1) & (tx_shift2udpFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_shift2udpFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_ib2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_load_reg_327 == 1'd1) & (tx_shift2udpFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_shift2udpFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_ib2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_ib2udpFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ls_writeRemainder_load_reg_327 == 1'd1) & (tx_shift2udpFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_shift2udpFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_110 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_131 = ((tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (currWord_last_V_fu_172_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_135 = ((tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (currWord_last_V_fu_172_p3 == 1'd0));
end

always @ (*) begin
    ap_condition_156 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_105 = 'bx;

always @ (*) begin
    ap_predicate_op18_read_state1 = ((tmp_5_i_nbreadreq_fu_84_p3 == 1'd1) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_predicate_op47_write_state2 = ((tmp_5_i_reg_331 == 1'd1) & (ls_writeRemainder_load_reg_327 == 1'd0));
end

assign currWord_data_V_fu_158_p1 = tx_ib2udpFifo_dout[511:0];

assign currWord_last_V_fu_172_p3 = tx_ib2udpFifo_dout[1024'd576];

assign ls_writeRemainder_load_load_fu_144_p1 = ls_writeRemainder;

assign or_ln174_6_i_fu_288_p5 = {{{{{{1'd0}, {sendWord_last_V_reg_350}}}, {select_ln1070_fu_280_p3}}}, {sendWord_data_V_2_fu_272_p3}};

assign p_Result_1_fu_251_p3 = {{tmp_7_i7_reg_344}, {8'd255}};

assign p_Result_2_fu_258_p3 = {{trunc_ln674_reg_338}, {reg_136}};

assign p_Result_3_fu_265_p3 = {{tmp_7_i7_reg_344}, {reg_140}};

assign p_Result_s_fu_244_p3 = {{trunc_ln674_reg_338}, {64'd0}};

assign select_ln1070_fu_280_p3 = ((ls_firstWord[0:0] == 1'b1) ? p_Result_1_fu_251_p3 : p_Result_3_fu_265_p3);

assign sendWord_data_V_2_fu_272_p3 = ((ls_firstWord[0:0] == 1'b1) ? p_Result_s_fu_244_p3 : p_Result_2_fu_258_p3);

assign sendWord_last_V_fu_204_p2 = ((tmp_8_i8_fu_194_p4 == 8'd0) ? 1'b1 : 1'b0);

assign tmp_5_i_nbreadreq_fu_84_p3 = tx_ib2udpFifo_empty_n;

assign tmp_8_i8_fu_194_p4 = {{tx_ib2udpFifo_dout[575:568]}};

assign trunc_ln674_fu_180_p1 = tx_ib2udpFifo_dout[447:0];

assign xor_ln947_fu_222_p2 = (sendWord_last_V_fu_204_p2 ^ 1'd1);

assign zext_ln174_2_fu_299_p1 = or_ln174_6_i_fu_288_p5;

assign zext_ln174_cast_fu_310_p5 = {{{{{{57'd72057594037927936}, {reg_140}}}, {448'd0}}}, {reg_136}};

assign zext_ln174_fu_322_p1 = zext_ln174_cast_fu_310_p5;

endmodule //rocev2_top_udp_lshiftWordByOctet_512_1_s
