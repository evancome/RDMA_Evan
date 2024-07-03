// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_qp_interface_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_qp_interface_TVALID,
        stateTable2qpi_rsp_dout,
        stateTable2qpi_rsp_num_data_valid,
        stateTable2qpi_rsp_fifo_cap,
        stateTable2qpi_rsp_empty_n,
        stateTable2qpi_rsp_read,
        qpi2stateTable_upd_req_din,
        qpi2stateTable_upd_req_num_data_valid,
        qpi2stateTable_upd_req_fifo_cap,
        qpi2stateTable_upd_req_full_n,
        qpi2stateTable_upd_req_write,
        if2msnTable_init_din,
        if2msnTable_init_num_data_valid,
        if2msnTable_init_fifo_cap,
        if2msnTable_init_full_n,
        if2msnTable_init_write,
        s_axis_qp_interface_TDATA,
        s_axis_qp_interface_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_qp_interface_TVALID;
input  [122:0] stateTable2qpi_rsp_dout;
input  [1:0] stateTable2qpi_rsp_num_data_valid;
input  [1:0] stateTable2qpi_rsp_fifo_cap;
input   stateTable2qpi_rsp_empty_n;
output   stateTable2qpi_rsp_read;
output  [96:0] qpi2stateTable_upd_req_din;
input  [1:0] qpi2stateTable_upd_req_num_data_valid;
input  [1:0] qpi2stateTable_upd_req_fifo_cap;
input   qpi2stateTable_upd_req_full_n;
output   qpi2stateTable_upd_req_write;
output  [47:0] if2msnTable_init_din;
input  [1:0] if2msnTable_init_num_data_valid;
input  [1:0] if2msnTable_init_fifo_cap;
input   if2msnTable_init_full_n;
output   if2msnTable_init_write;
input  [183:0] s_axis_qp_interface_TDATA;
output   s_axis_qp_interface_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stateTable2qpi_rsp_read;
reg[96:0] qpi2stateTable_upd_req_din;
reg qpi2stateTable_upd_req_write;
reg if2msnTable_init_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_80_p3;
reg    ap_predicate_op21_read_state1;
wire   [0:0] tmp_i_276_nbreadreq_fu_94_p3;
reg    ap_predicate_op36_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] qp_fsmState_load_reg_272;
reg   [0:0] tmp_i_reg_276;
reg    ap_predicate_op41_write_state2;
reg   [0:0] tmp_i_276_reg_285;
reg    ap_predicate_op48_write_state2;
reg    ap_predicate_op52_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] qp_fsmState;
reg   [31:0] context_newState;
reg   [15:0] context_qp_num_V;
reg   [23:0] context_remote_psn_V;
reg   [23:0] context_local_psn_V;
reg   [15:0] context_r_key_V;
reg    s_axis_qp_interface_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    qpi2stateTable_upd_req_blk_n;
reg    stateTable2qpi_rsp_blk_n;
reg    if2msnTable_init_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] qpn_V_cast_i_reg_280;
wire   [31:0] trunc_ln145_fu_126_p1;
wire   [96:0] zext_ln174_32_fu_219_p1;
reg    ap_block_pp0_stage0_01001;
wire   [96:0] p_03_fu_240_p6;
wire   [16:0] or_ln_i_fu_212_p3;
wire   [31:0] tmp_256_i_fu_259_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_s_axis_qp_interface_U_apdone_blk;
wire   [183:0] s_axis_qp_interface_TDATA_int_regslice;
wire    s_axis_qp_interface_TVALID_int_regslice;
reg    s_axis_qp_interface_TREADY_int_regslice;
wire    regslice_both_s_axis_qp_interface_U_ack_in;
reg    ap_condition_147;
reg    ap_condition_176;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 qp_fsmState = 1'd0;
#0 context_newState = 32'd0;
#0 context_qp_num_V = 16'd0;
#0 context_remote_psn_V = 24'd0;
#0 context_local_psn_V = 24'd0;
#0 context_r_key_V = 16'd0;
end

rocev2_top_regslice_both #(
    .DataWidth( 184 ))
regslice_both_s_axis_qp_interface_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_qp_interface_TDATA),
    .vld_in(s_axis_qp_interface_TVALID),
    .ack_in(regslice_both_s_axis_qp_interface_U_ack_in),
    .data_out(s_axis_qp_interface_TDATA_int_regslice),
    .vld_out(s_axis_qp_interface_TVALID_int_regslice),
    .ack_out(s_axis_qp_interface_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_qp_interface_U_apdone_blk)
);

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
    if ((1'b1 == ap_condition_147)) begin
        if (((tmp_i_276_nbreadreq_fu_94_p3 == 1'd1) & (qp_fsmState == 1'd1))) begin
            qp_fsmState <= 1'd0;
        end else if (((tmp_i_nbreadreq_fu_80_p3 == 1'd1) & (qp_fsmState == 1'd0))) begin
            qp_fsmState <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_80_p3 == 1'd1) & (qp_fsmState == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        context_local_psn_V <= {{s_axis_qp_interface_TDATA_int_regslice[103:80]}};
        context_newState <= trunc_ln145_fu_126_p1;
        context_qp_num_V <= {{s_axis_qp_interface_TDATA_int_regslice[47:32]}};
        context_r_key_V <= {{s_axis_qp_interface_TDATA_int_regslice[119:104]}};
        context_remote_psn_V <= {{s_axis_qp_interface_TDATA_int_regslice[79:56]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        qp_fsmState_load_reg_272 <= qp_fsmState;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_80_p3 == 1'd1) & (qp_fsmState == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        qpn_V_cast_i_reg_280 <= {{s_axis_qp_interface_TDATA_int_regslice[47:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((qp_fsmState == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_276_reg_285 <= tmp_i_276_nbreadreq_fu_94_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((qp_fsmState == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_reg_276 <= tmp_i_nbreadreq_fu_80_p3;
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
    if (((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        if2msnTable_init_blk_n = if2msnTable_init_full_n;
    end else begin
        if2msnTable_init_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if2msnTable_init_write = 1'b1;
    end else begin
        if2msnTable_init_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op48_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op41_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        qpi2stateTable_upd_req_blk_n = qpi2stateTable_upd_req_full_n;
    end else begin
        qpi2stateTable_upd_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_176)) begin
        if ((ap_predicate_op48_write_state2 == 1'b1)) begin
            qpi2stateTable_upd_req_din = p_03_fu_240_p6;
        end else if ((ap_predicate_op41_write_state2 == 1'b1)) begin
            qpi2stateTable_upd_req_din = zext_ln174_32_fu_219_p1;
        end else begin
            qpi2stateTable_upd_req_din = 'bx;
        end
    end else begin
        qpi2stateTable_upd_req_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op48_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op41_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        qpi2stateTable_upd_req_write = 1'b1;
    end else begin
        qpi2stateTable_upd_req_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_qp_interface_TDATA_blk_n = s_axis_qp_interface_TVALID_int_regslice;
    end else begin
        s_axis_qp_interface_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_qp_interface_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_qp_interface_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        stateTable2qpi_rsp_blk_n = stateTable2qpi_rsp_empty_n;
    end else begin
        stateTable2qpi_rsp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        stateTable2qpi_rsp_read = 1'b1;
    end else begin
        stateTable2qpi_rsp_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op52_write_state2 == 1'b1) & (if2msnTable_init_full_n == 1'b0)) | ((ap_predicate_op48_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)) | ((ap_predicate_op41_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op36_read_state1 == 1'b1) & (stateTable2qpi_rsp_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (s_axis_qp_interface_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op52_write_state2 == 1'b1) & (if2msnTable_init_full_n == 1'b0)) | ((ap_predicate_op48_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)) | ((ap_predicate_op41_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op36_read_state1 == 1'b1) & (stateTable2qpi_rsp_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (s_axis_qp_interface_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op52_write_state2 == 1'b1) & (if2msnTable_init_full_n == 1'b0)) | ((ap_predicate_op48_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)) | ((ap_predicate_op41_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op36_read_state1 == 1'b1) & (stateTable2qpi_rsp_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (s_axis_qp_interface_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op36_read_state1 == 1'b1) & (stateTable2qpi_rsp_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (s_axis_qp_interface_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op52_write_state2 == 1'b1) & (if2msnTable_init_full_n == 1'b0)) | ((ap_predicate_op48_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)) | ((ap_predicate_op41_write_state2 == 1'b1) & (qpi2stateTable_upd_req_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_147 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_176 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op21_read_state1 = ((tmp_i_nbreadreq_fu_80_p3 == 1'd1) & (qp_fsmState == 1'd0));
end

always @ (*) begin
    ap_predicate_op36_read_state1 = ((tmp_i_276_nbreadreq_fu_94_p3 == 1'd1) & (qp_fsmState == 1'd1));
end

always @ (*) begin
    ap_predicate_op41_write_state2 = ((tmp_i_reg_276 == 1'd1) & (qp_fsmState_load_reg_272 == 1'd0));
end

always @ (*) begin
    ap_predicate_op48_write_state2 = ((tmp_i_276_reg_285 == 1'd1) & (qp_fsmState_load_reg_272 == 1'd1));
end

always @ (*) begin
    ap_predicate_op52_write_state2 = ((tmp_i_276_reg_285 == 1'd1) & (qp_fsmState_load_reg_272 == 1'd1));
end

assign if2msnTable_init_din = tmp_256_i_fu_259_p3;

assign or_ln_i_fu_212_p3 = {{1'd0}, {qpn_V_cast_i_reg_280}};

assign p_03_fu_240_p6 = {{{{{{{{1'd1}, {context_local_psn_V}}}, {context_remote_psn_V}}}, {context_newState}}}, {context_qp_num_V}};

assign s_axis_qp_interface_TREADY = regslice_both_s_axis_qp_interface_U_ack_in;

assign tmp_256_i_fu_259_p3 = {{context_r_key_V}, {context_qp_num_V}};

assign tmp_i_276_nbreadreq_fu_94_p3 = stateTable2qpi_rsp_empty_n;

assign tmp_i_nbreadreq_fu_80_p3 = s_axis_qp_interface_TVALID_int_regslice;

assign trunc_ln145_fu_126_p1 = s_axis_qp_interface_TDATA_int_regslice[31:0];

assign zext_ln174_32_fu_219_p1 = or_ln_i_fu_212_p3;

endmodule //rocev2_top_qp_interface_0_s