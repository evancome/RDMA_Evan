// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_lshiftWordByOctet_512_12_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_split2aethShift_dout,
        tx_split2aethShift_num_data_valid,
        tx_split2aethShift_fifo_cap,
        tx_split2aethShift_empty_n,
        tx_split2aethShift_read,
        tx_aethShift2payFifo_din,
        tx_aethShift2payFifo_num_data_valid,
        tx_aethShift2payFifo_fifo_cap,
        tx_aethShift2payFifo_full_n,
        tx_aethShift2payFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] tx_split2aethShift_dout;
input  [2:0] tx_split2aethShift_num_data_valid;
input  [2:0] tx_split2aethShift_fifo_cap;
input   tx_split2aethShift_empty_n;
output   tx_split2aethShift_read;
output  [1023:0] tx_aethShift2payFifo_din;
input  [1:0] tx_aethShift2payFifo_num_data_valid;
input  [1:0] tx_aethShift2payFifo_fifo_cap;
input   tx_aethShift2payFifo_full_n;
output   tx_aethShift2payFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_split2aethShift_read;
reg[1023:0] tx_aethShift2payFifo_din;
reg tx_aethShift2payFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] ls_writeRemainder_2_load_load_fu_142_p1;
wire   [0:0] tmp_221_i_nbreadreq_fu_82_p3;
reg    ap_predicate_op18_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] ls_writeRemainder_2_load_reg_325;
reg   [0:0] tmp_221_i_reg_329;
reg    ap_predicate_op47_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ls_writeRemainder_2;
reg   [511:0] prevWord_data_V_3;
reg   [63:0] prevWord_keep_V_9;
reg   [0:0] ls_firstWord_2;
reg    tx_aethShift2payFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    tx_split2aethShift_blk_n;
reg   [31:0] reg_134;
reg    ap_block_pp0_stage0_11001;
reg   [3:0] reg_138;
wire   [479:0] trunc_ln674_fu_178_p1;
reg   [479:0] trunc_ln674_reg_336;
reg   [59:0] tmp_223_i7_reg_342;
wire   [0:0] sendWord_last_V_fu_202_p2;
reg   [0:0] sendWord_last_V_reg_348;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_6_new_0_i_reg_103;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_6_new_0_i_reg_103;
wire   [0:0] currWord_last_V_fu_170_p3;
wire   [0:0] xor_ln947_fu_220_p2;
wire   [511:0] currWord_data_V_fu_156_p1;
wire   [1023:0] zext_ln174_77_fu_297_p1;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_fu_320_p1;
wire   [3:0] tmp_224_i8_fu_192_p4;
wire   [511:0] p_Result_s_fu_242_p3;
wire   [511:0] p_Result_17_fu_256_p3;
wire   [63:0] p_Result_16_fu_249_p3;
wire   [63:0] p_Result_18_fu_263_p3;
wire   [63:0] select_ln543_fu_278_p3;
wire   [511:0] sendWord_data_V_6_fu_270_p3;
wire   [577:0] or_ln174_i_fu_286_p5;
wire   [576:0] zext_ln174_cast_fu_308_p5;
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
#0 ls_writeRemainder_2 = 1'd0;
#0 prevWord_data_V_3 = 512'd0;
#0 prevWord_keep_V_9 = 64'd0;
#0 ls_firstWord_2 = 1'd1;
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
            ap_phi_reg_pp0_iter1_ls_firstWord_6_new_0_i_reg_103 <= 1'd0;
        end else if ((1'b1 == ap_condition_131)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_6_new_0_i_reg_103 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_6_new_0_i_reg_103 <= ap_phi_reg_pp0_iter0_ls_firstWord_6_new_0_i_reg_103;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_110)) begin
        if ((ls_writeRemainder_2_load_load_fu_142_p1 == 1'd1)) begin
            ls_writeRemainder_2 <= 1'd0;
        end else if ((1'b1 == ap_condition_131)) begin
            ls_writeRemainder_2 <= xor_ln947_fu_220_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_221_i_reg_329 == 1'd1) & (ls_writeRemainder_2_load_reg_325 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_firstWord_2 <= ap_phi_reg_pp0_iter1_ls_firstWord_6_new_0_i_reg_103;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_writeRemainder_2_load_reg_325 <= ls_writeRemainder_2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prevWord_data_V_3 <= currWord_data_V_fu_156_p1;
        prevWord_keep_V_9 <= {{tx_split2aethShift_dout[575:512]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2_load_load_fu_142_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_134 <= {{prevWord_data_V_3[511:480]}};
        reg_138 <= {{prevWord_keep_V_9[63:60]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sendWord_last_V_reg_348 <= sendWord_last_V_fu_202_p2;
        tmp_223_i7_reg_342 <= {{tx_split2aethShift_dout[571:512]}};
        trunc_ln674_reg_336 <= trunc_ln674_fu_178_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_221_i_reg_329 <= tmp_221_i_nbreadreq_fu_82_p3;
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
    if ((((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_2_load_reg_325 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tx_aethShift2payFifo_blk_n = tx_aethShift2payFifo_full_n;
    end else begin
        tx_aethShift2payFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_156)) begin
        if ((ls_writeRemainder_2_load_reg_325 == 1'd1)) begin
            tx_aethShift2payFifo_din = zext_ln174_fu_320_p1;
        end else if ((ap_predicate_op47_write_state2 == 1'b1)) begin
            tx_aethShift2payFifo_din = zext_ln174_77_fu_297_p1;
        end else begin
            tx_aethShift2payFifo_din = 'bx;
        end
    end else begin
        tx_aethShift2payFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2_load_reg_325 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tx_aethShift2payFifo_write = 1'b1;
    end else begin
        tx_aethShift2payFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_split2aethShift_blk_n = tx_split2aethShift_empty_n;
    end else begin
        tx_split2aethShift_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tx_split2aethShift_read = 1'b1;
    end else begin
        tx_split2aethShift_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_325 == 1'd1) & (tx_aethShift2payFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_aethShift2payFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_split2aethShift_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_325 == 1'd1) & (tx_aethShift2payFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_aethShift2payFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_split2aethShift_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_325 == 1'd1) & (tx_aethShift2payFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_aethShift2payFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_split2aethShift_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (tx_split2aethShift_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ls_writeRemainder_2_load_reg_325 == 1'd1) & (tx_aethShift2payFifo_full_n == 1'b0)) | ((ap_predicate_op47_write_state2 == 1'b1) & (tx_aethShift2payFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_110 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_131 = ((tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (currWord_last_V_fu_170_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_135 = ((tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (currWord_last_V_fu_170_p3 == 1'd0));
end

always @ (*) begin
    ap_condition_156 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_ls_firstWord_6_new_0_i_reg_103 = 'bx;

always @ (*) begin
    ap_predicate_op18_read_state1 = ((tmp_221_i_nbreadreq_fu_82_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op47_write_state2 = ((tmp_221_i_reg_329 == 1'd1) & (ls_writeRemainder_2_load_reg_325 == 1'd0));
end

assign currWord_data_V_fu_156_p1 = tx_split2aethShift_dout[511:0];

assign currWord_last_V_fu_170_p3 = tx_split2aethShift_dout[1024'd576];

assign ls_writeRemainder_2_load_load_fu_142_p1 = ls_writeRemainder_2;

assign or_ln174_i_fu_286_p5 = {{{{{{1'd0}, {sendWord_last_V_reg_348}}}, {select_ln543_fu_278_p3}}}, {sendWord_data_V_6_fu_270_p3}};

assign p_Result_16_fu_249_p3 = {{tmp_223_i7_reg_342}, {4'd15}};

assign p_Result_17_fu_256_p3 = {{trunc_ln674_reg_336}, {reg_134}};

assign p_Result_18_fu_263_p3 = {{tmp_223_i7_reg_342}, {reg_138}};

assign p_Result_s_fu_242_p3 = {{trunc_ln674_reg_336}, {32'd0}};

assign select_ln543_fu_278_p3 = ((ls_firstWord_2[0:0] == 1'b1) ? p_Result_16_fu_249_p3 : p_Result_18_fu_263_p3);

assign sendWord_data_V_6_fu_270_p3 = ((ls_firstWord_2[0:0] == 1'b1) ? p_Result_s_fu_242_p3 : p_Result_17_fu_256_p3);

assign sendWord_last_V_fu_202_p2 = ((tmp_224_i8_fu_192_p4 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_221_i_nbreadreq_fu_82_p3 = tx_split2aethShift_empty_n;

assign tmp_224_i8_fu_192_p4 = {{tx_split2aethShift_dout[575:572]}};

assign trunc_ln674_fu_178_p1 = tx_split2aethShift_dout[479:0];

assign xor_ln947_fu_220_p2 = (sendWord_last_V_fu_202_p2 ^ 1'd1);

assign zext_ln174_77_fu_297_p1 = or_ln174_i_fu_286_p5;

assign zext_ln174_cast_fu_308_p5 = {{{{{{61'd1152921504606846976}, {reg_138}}}, {480'd0}}}, {reg_134}};

assign zext_ln174_fu_320_p1 = zext_ln174_cast_fu_308_p5;

endmodule //rocev2_top_lshiftWordByOctet_512_12_0_s
