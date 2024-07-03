// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rocev2_top_process_udp_512_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rx_ip2udpFifo_dout,
        rx_ip2udpFifo_num_data_valid,
        rx_ip2udpFifo_fifo_cap,
        rx_ip2udpFifo_empty_n,
        rx_ip2udpFifo_read,
        rx_udp2shiftFifo_din,
        rx_udp2shiftFifo_num_data_valid,
        rx_udp2shiftFifo_fifo_cap,
        rx_udp2shiftFifo_full_n,
        rx_udp2shiftFifo_write,
        rx_udpMetaFifo_din,
        rx_udpMetaFifo_num_data_valid,
        rx_udpMetaFifo_fifo_cap,
        rx_udpMetaFifo_full_n,
        rx_udpMetaFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] rx_ip2udpFifo_dout;
input  [1:0] rx_ip2udpFifo_num_data_valid;
input  [1:0] rx_ip2udpFifo_fifo_cap;
input   rx_ip2udpFifo_empty_n;
output   rx_ip2udpFifo_read;
output  [1023:0] rx_udp2shiftFifo_din;
input  [1:0] rx_udp2shiftFifo_num_data_valid;
input  [1:0] rx_udp2shiftFifo_fifo_cap;
input   rx_udp2shiftFifo_full_n;
output   rx_udp2shiftFifo_write;
output  [48:0] rx_udpMetaFifo_din;
input  [1:0] rx_udpMetaFifo_num_data_valid;
input  [1:0] rx_udpMetaFifo_fifo_cap;
input   rx_udpMetaFifo_full_n;
output   rx_udpMetaFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rx_ip2udpFifo_read;
reg rx_udp2shiftFifo_write;
reg rx_udpMetaFifo_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_78_p3;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_322;
reg   [0:0] icmp_ln1019_reg_344;
reg    ap_predicate_op58_write_state2;
reg   [0:0] metaWritten_2_load_reg_349;
reg    ap_predicate_op61_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] pu_header_ready;
reg   [15:0] pu_header_idx;
reg   [63:0] pu_header_header_V;
reg   [0:0] metaWritten_2;
reg    rx_ip2udpFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    rx_udp2shiftFifo_blk_n;
reg    rx_udpMetaFifo_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [1023:0] rx_ip2udpFifo_read_reg_326;
wire   [7:0] tmp_i_292_fu_194_p4;
reg   [7:0] tmp_i_292_reg_334;
wire   [7:0] tmp_121_i_fu_204_p4;
reg   [7:0] tmp_121_i_reg_339;
wire   [0:0] icmp_ln1019_fu_222_p2;
wire   [0:0] metaWritten_2_load_load_fu_228_p1;
reg   [7:0] tmp_122_i_reg_353;
wire   [7:0] trunc_ln628_fu_242_p1;
reg   [7:0] trunc_ln628_reg_358;
reg   [7:0] tmp_125_i_reg_363;
reg   [7:0] tmp_reg_368;
reg   [0:0] ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_pu_header_ready_flag_0_i_reg_106;
wire   [0:0] pu_header_ready_load_load_fu_155_p1;
reg   [15:0] ap_phi_mux_pu_header_idx_new_0_i_phi_fu_120_p4;
wire   [15:0] add_ln67_fu_176_p2;
wire   [15:0] ap_phi_reg_pp0_iter0_pu_header_idx_new_0_i_reg_117;
reg   [47:0] ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4;
wire   [47:0] trunc_ln55_fu_167_p1;
wire   [47:0] ap_phi_reg_pp0_iter0_p_Val2_34_in_i_in_reg_127;
wire   [47:0] trunc_ln368_fu_183_p1;
reg   [0:0] ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_6_flag_0_i_reg_136;
wire   [0:0] xor_ln73_fu_272_p2;
wire   [0:0] or_ln73_fu_266_p2;
wire   [15:0] select_ln73_fu_278_p3;
wire   [63:0] tmp_74_fu_172_p1;
wire   [0:0] or_ln73_1_fu_286_p2;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] p_Result_s_fu_214_p3;
wire   [0:0] currWord_last_V_fu_147_p3;
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
#0 pu_header_ready = 1'd0;
#0 pu_header_idx = 16'd0;
#0 pu_header_header_V = 64'd0;
#0 metaWritten_2 = 1'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1019_reg_344 <= icmp_ln1019_fu_222_p2;
        metaWritten_2_load_reg_349 <= metaWritten_2;
        rx_ip2udpFifo_read_reg_326 <= rx_ip2udpFifo_dout;
        tmp_121_i_reg_339 <= {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[23:16]}};
        tmp_i_292_reg_334 <= {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[31:24]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln73_1_fu_286_p2 == 1'd1))) begin
        metaWritten_2 <= xor_ln73_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (pu_header_ready_load_load_fu_155_p1 == 1'd0))) begin
        pu_header_header_V <= tmp_74_fu_172_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln73_fu_266_p2 == 1'd1))) begin
        pu_header_idx <= select_ln73_fu_278_p3;
        pu_header_ready <= xor_ln73_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (metaWritten_2_load_load_fu_228_p1 == 1'd0))) begin
        tmp_122_i_reg_353 <= {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[15:8]}};
        tmp_125_i_reg_363 <= {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[39:32]}};
        tmp_reg_368 <= {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[47:40]}};
        trunc_ln628_reg_358 <= trunc_ln628_fu_242_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_322 <= tmp_i_nbreadreq_fu_78_p3;
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
    if ((tmp_i_nbreadreq_fu_78_p3 == 1'd1)) begin
        if ((metaWritten_2_load_load_fu_228_p1 == 1'd0)) begin
            ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4 = 1'd1;
        end else if ((metaWritten_2_load_load_fu_228_p1 == 1'd1)) begin
            ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4 = 1'd0;
        end else begin
            ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4 = ap_phi_reg_pp0_iter0_metaWritten_6_flag_0_i_reg_136;
        end
    end else begin
        ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4 = ap_phi_reg_pp0_iter0_metaWritten_6_flag_0_i_reg_136;
    end
end

always @ (*) begin
    if ((tmp_i_nbreadreq_fu_78_p3 == 1'd1)) begin
        if ((pu_header_ready_load_load_fu_155_p1 == 1'd0)) begin
            ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4 = trunc_ln368_fu_183_p1;
        end else if ((pu_header_ready_load_load_fu_155_p1 == 1'd1)) begin
            ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4 = trunc_ln55_fu_167_p1;
        end else begin
            ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4 = ap_phi_reg_pp0_iter0_p_Val2_34_in_i_in_reg_127;
        end
    end else begin
        ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4 = ap_phi_reg_pp0_iter0_p_Val2_34_in_i_in_reg_127;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (pu_header_ready_load_load_fu_155_p1 == 1'd0))) begin
        ap_phi_mux_pu_header_idx_new_0_i_phi_fu_120_p4 = add_ln67_fu_176_p2;
    end else begin
        ap_phi_mux_pu_header_idx_new_0_i_phi_fu_120_p4 = ap_phi_reg_pp0_iter0_pu_header_idx_new_0_i_reg_117;
    end
end

always @ (*) begin
    if ((tmp_i_nbreadreq_fu_78_p3 == 1'd1)) begin
        if ((pu_header_ready_load_load_fu_155_p1 == 1'd0)) begin
            ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4 = 1'd1;
        end else if ((pu_header_ready_load_load_fu_155_p1 == 1'd1)) begin
            ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4 = 1'd0;
        end else begin
            ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4 = ap_phi_reg_pp0_iter0_pu_header_ready_flag_0_i_reg_106;
        end
    end else begin
        ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4 = ap_phi_reg_pp0_iter0_pu_header_ready_flag_0_i_reg_106;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ip2udpFifo_blk_n = rx_ip2udpFifo_empty_n;
    end else begin
        rx_ip2udpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_ip2udpFifo_read = 1'b1;
    end else begin
        rx_ip2udpFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udp2shiftFifo_blk_n = rx_udp2shiftFifo_full_n;
    end else begin
        rx_udp2shiftFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op58_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udp2shiftFifo_write = 1'b1;
    end else begin
        rx_udp2shiftFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op61_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udpMetaFifo_blk_n = rx_udpMetaFifo_full_n;
    end else begin
        rx_udpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op61_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rx_udpMetaFifo_write = 1'b1;
    end else begin
        rx_udpMetaFifo_write = 1'b0;
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

assign add_ln67_fu_176_p2 = (pu_header_idx + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op61_write_state2 == 1'b1) & (rx_udpMetaFifo_full_n == 1'b0)) | ((ap_predicate_op58_write_state2 == 1'b1) & (rx_udp2shiftFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (rx_ip2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op61_write_state2 == 1'b1) & (rx_udpMetaFifo_full_n == 1'b0)) | ((ap_predicate_op58_write_state2 == 1'b1) & (rx_udp2shiftFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (rx_ip2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op61_write_state2 == 1'b1) & (rx_udpMetaFifo_full_n == 1'b0)) | ((ap_predicate_op58_write_state2 == 1'b1) & (rx_udp2shiftFifo_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (rx_ip2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_78_p3 == 1'd1) & (rx_ip2udpFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op61_write_state2 == 1'b1) & (rx_udpMetaFifo_full_n == 1'b0)) | ((ap_predicate_op58_write_state2 == 1'b1) & (rx_udp2shiftFifo_full_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_6_flag_0_i_reg_136 = 'bx;

assign ap_phi_reg_pp0_iter0_p_Val2_34_in_i_in_reg_127 = 'bx;

assign ap_phi_reg_pp0_iter0_pu_header_idx_new_0_i_reg_117 = 'bx;

assign ap_phi_reg_pp0_iter0_pu_header_ready_flag_0_i_reg_106 = 'bx;

always @ (*) begin
    ap_predicate_op58_write_state2 = ((icmp_ln1019_reg_344 == 1'd1) & (tmp_i_reg_322 == 1'd1));
end

always @ (*) begin
    ap_predicate_op61_write_state2 = ((metaWritten_2_load_reg_349 == 1'd0) & (tmp_i_reg_322 == 1'd1));
end

assign currWord_last_V_fu_147_p3 = rx_ip2udpFifo_dout[1024'd576];

assign icmp_ln1019_fu_222_p2 = ((p_Result_s_fu_214_p3 == 16'd4791) ? 1'b1 : 1'b0);

assign metaWritten_2_load_load_fu_228_p1 = metaWritten_2;

assign or_ln73_1_fu_286_p2 = (currWord_last_V_fu_147_p3 | ap_phi_mux_metaWritten_6_flag_0_i_phi_fu_139_p4);

assign or_ln73_fu_266_p2 = (currWord_last_V_fu_147_p3 | ap_phi_mux_pu_header_ready_flag_0_i_phi_fu_109_p4);

assign p_Result_s_fu_214_p3 = {{tmp_121_i_fu_204_p4}, {tmp_i_292_fu_194_p4}};

assign pu_header_ready_load_load_fu_155_p1 = pu_header_ready;

assign rx_udp2shiftFifo_din = rx_ip2udpFifo_read_reg_326;

assign rx_udpMetaFifo_din = {{{{{{{icmp_ln1019_reg_344}, {tmp_125_i_reg_363}}, {tmp_reg_368}}, {tmp_121_i_reg_339}}, {tmp_i_292_reg_334}}, {trunc_ln628_reg_358}}, {tmp_122_i_reg_353}};

assign select_ln73_fu_278_p3 = ((currWord_last_V_fu_147_p3[0:0] == 1'b1) ? 16'd0 : ap_phi_mux_pu_header_idx_new_0_i_phi_fu_120_p4);

assign tmp_121_i_fu_204_p4 = {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[23:16]}};

assign tmp_74_fu_172_p1 = rx_ip2udpFifo_dout[63:0];

assign tmp_i_292_fu_194_p4 = {{ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[31:24]}};

assign tmp_i_nbreadreq_fu_78_p3 = rx_ip2udpFifo_empty_n;

assign trunc_ln368_fu_183_p1 = rx_ip2udpFifo_dout[47:0];

assign trunc_ln55_fu_167_p1 = pu_header_header_V[47:0];

assign trunc_ln628_fu_242_p1 = ap_phi_mux_p_Val2_34_in_i_in_phi_fu_130_p4[7:0];

assign xor_ln73_fu_272_p2 = (currWord_last_V_fu_147_p3 ^ 1'd1);

endmodule //rocev2_top_process_udp_512_4
