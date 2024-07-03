
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [0:0] in_chan_dep_vld_vec_0;
    wire [54:0] in_chan_dep_data_vec_0;
    wire [0:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [54:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_8_0;
    wire [54:0] dep_chan_data_8_0;
    wire token_8_0;
    wire [0:0] proc_1_data_FIFO_blk;
    wire [0:0] proc_1_data_PIPO_blk;
    wire [0:0] proc_1_start_FIFO_blk;
    wire [0:0] proc_1_TLF_FIFO_blk;
    wire [0:0] proc_1_input_sync_blk;
    wire [0:0] proc_1_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_1;
    reg [0:0] proc_dep_vld_vec_1_reg;
    wire [0:0] in_chan_dep_vld_vec_1;
    wire [54:0] in_chan_dep_data_vec_1;
    wire [0:0] token_in_vec_1;
    wire [0:0] out_chan_dep_vld_vec_1;
    wire [54:0] out_chan_dep_data_1;
    wire [0:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_5_1;
    wire [54:0] dep_chan_data_5_1;
    wire token_5_1;
    wire [0:0] proc_2_data_FIFO_blk;
    wire [0:0] proc_2_data_PIPO_blk;
    wire [0:0] proc_2_start_FIFO_blk;
    wire [0:0] proc_2_TLF_FIFO_blk;
    wire [0:0] proc_2_input_sync_blk;
    wire [0:0] proc_2_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_2;
    reg [0:0] proc_dep_vld_vec_2_reg;
    wire [0:0] in_chan_dep_vld_vec_2;
    wire [54:0] in_chan_dep_data_vec_2;
    wire [0:0] token_in_vec_2;
    wire [0:0] out_chan_dep_vld_vec_2;
    wire [54:0] out_chan_dep_data_2;
    wire [0:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_8_2;
    wire [54:0] dep_chan_data_8_2;
    wire token_8_2;
    wire [0:0] proc_3_data_FIFO_blk;
    wire [0:0] proc_3_data_PIPO_blk;
    wire [0:0] proc_3_start_FIFO_blk;
    wire [0:0] proc_3_TLF_FIFO_blk;
    wire [0:0] proc_3_input_sync_blk;
    wire [0:0] proc_3_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_3;
    reg [0:0] proc_dep_vld_vec_3_reg;
    wire [0:0] in_chan_dep_vld_vec_3;
    wire [54:0] in_chan_dep_data_vec_3;
    wire [0:0] token_in_vec_3;
    wire [0:0] out_chan_dep_vld_vec_3;
    wire [54:0] out_chan_dep_data_3;
    wire [0:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_31_3;
    wire [54:0] dep_chan_data_31_3;
    wire token_31_3;
    wire [0:0] proc_4_data_FIFO_blk;
    wire [0:0] proc_4_data_PIPO_blk;
    wire [0:0] proc_4_start_FIFO_blk;
    wire [0:0] proc_4_TLF_FIFO_blk;
    wire [0:0] proc_4_input_sync_blk;
    wire [0:0] proc_4_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_4;
    reg [0:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [54:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [0:0] out_chan_dep_vld_vec_4;
    wire [54:0] out_chan_dep_data_4;
    wire [0:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_29_4;
    wire [54:0] dep_chan_data_29_4;
    wire token_29_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [164:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [54:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_1_5;
    wire [54:0] dep_chan_data_1_5;
    wire token_1_5;
    wire dep_chan_vld_6_5;
    wire [54:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_11_5;
    wire [54:0] dep_chan_data_11_5;
    wire token_11_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [109:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [54:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [54:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_9_6;
    wire [54:0] dep_chan_data_9_6;
    wire token_9_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [109:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [54:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_8_7;
    wire [54:0] dep_chan_data_8_7;
    wire token_8_7;
    wire dep_chan_vld_14_7;
    wire [54:0] dep_chan_data_14_7;
    wire token_14_7;
    wire [3:0] proc_8_data_FIFO_blk;
    wire [3:0] proc_8_data_PIPO_blk;
    wire [3:0] proc_8_start_FIFO_blk;
    wire [3:0] proc_8_TLF_FIFO_blk;
    wire [3:0] proc_8_input_sync_blk;
    wire [3:0] proc_8_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_8;
    reg [3:0] proc_dep_vld_vec_8_reg;
    wire [3:0] in_chan_dep_vld_vec_8;
    wire [219:0] in_chan_dep_data_vec_8;
    wire [3:0] token_in_vec_8;
    wire [3:0] out_chan_dep_vld_vec_8;
    wire [54:0] out_chan_dep_data_8;
    wire [3:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_0_8;
    wire [54:0] dep_chan_data_0_8;
    wire token_0_8;
    wire dep_chan_vld_2_8;
    wire [54:0] dep_chan_data_2_8;
    wire token_2_8;
    wire dep_chan_vld_7_8;
    wire [54:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_12_8;
    wire [54:0] dep_chan_data_12_8;
    wire token_12_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [164:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [54:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_6_9;
    wire [54:0] dep_chan_data_6_9;
    wire token_6_9;
    wire dep_chan_vld_10_9;
    wire [54:0] dep_chan_data_10_9;
    wire token_10_9;
    wire dep_chan_vld_11_9;
    wire [54:0] dep_chan_data_11_9;
    wire token_11_9;
    wire [1:0] proc_10_data_FIFO_blk;
    wire [1:0] proc_10_data_PIPO_blk;
    wire [1:0] proc_10_start_FIFO_blk;
    wire [1:0] proc_10_TLF_FIFO_blk;
    wire [1:0] proc_10_input_sync_blk;
    wire [1:0] proc_10_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [1:0] in_chan_dep_vld_vec_10;
    wire [109:0] in_chan_dep_data_vec_10;
    wire [1:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [54:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_9_10;
    wire [54:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_17_10;
    wire [54:0] dep_chan_data_17_10;
    wire token_17_10;
    wire [2:0] proc_11_data_FIFO_blk;
    wire [2:0] proc_11_data_PIPO_blk;
    wire [2:0] proc_11_start_FIFO_blk;
    wire [2:0] proc_11_TLF_FIFO_blk;
    wire [2:0] proc_11_input_sync_blk;
    wire [2:0] proc_11_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_11;
    reg [2:0] proc_dep_vld_vec_11_reg;
    wire [2:0] in_chan_dep_vld_vec_11;
    wire [164:0] in_chan_dep_data_vec_11;
    wire [2:0] token_in_vec_11;
    wire [2:0] out_chan_dep_vld_vec_11;
    wire [54:0] out_chan_dep_data_11;
    wire [2:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_5_11;
    wire [54:0] dep_chan_data_5_11;
    wire token_5_11;
    wire dep_chan_vld_9_11;
    wire [54:0] dep_chan_data_9_11;
    wire token_9_11;
    wire dep_chan_vld_22_11;
    wire [54:0] dep_chan_data_22_11;
    wire token_22_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [164:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [54:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_8_12;
    wire [54:0] dep_chan_data_8_12;
    wire token_8_12;
    wire dep_chan_vld_14_12;
    wire [54:0] dep_chan_data_14_12;
    wire token_14_12;
    wire dep_chan_vld_40_12;
    wire [54:0] dep_chan_data_40_12;
    wire token_40_12;
    wire [1:0] proc_13_data_FIFO_blk;
    wire [1:0] proc_13_data_PIPO_blk;
    wire [1:0] proc_13_start_FIFO_blk;
    wire [1:0] proc_13_TLF_FIFO_blk;
    wire [1:0] proc_13_input_sync_blk;
    wire [1:0] proc_13_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_13;
    reg [1:0] proc_dep_vld_vec_13_reg;
    wire [1:0] in_chan_dep_vld_vec_13;
    wire [109:0] in_chan_dep_data_vec_13;
    wire [1:0] token_in_vec_13;
    wire [1:0] out_chan_dep_vld_vec_13;
    wire [54:0] out_chan_dep_data_13;
    wire [1:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_14_13;
    wire [54:0] dep_chan_data_14_13;
    wire token_14_13;
    wire dep_chan_vld_39_13;
    wire [54:0] dep_chan_data_39_13;
    wire token_39_13;
    wire [2:0] proc_14_data_FIFO_blk;
    wire [2:0] proc_14_data_PIPO_blk;
    wire [2:0] proc_14_start_FIFO_blk;
    wire [2:0] proc_14_TLF_FIFO_blk;
    wire [2:0] proc_14_input_sync_blk;
    wire [2:0] proc_14_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_14;
    reg [2:0] proc_dep_vld_vec_14_reg;
    wire [2:0] in_chan_dep_vld_vec_14;
    wire [164:0] in_chan_dep_data_vec_14;
    wire [2:0] token_in_vec_14;
    wire [2:0] out_chan_dep_vld_vec_14;
    wire [54:0] out_chan_dep_data_14;
    wire [2:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_7_14;
    wire [54:0] dep_chan_data_7_14;
    wire token_7_14;
    wire dep_chan_vld_12_14;
    wire [54:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_13_14;
    wire [54:0] dep_chan_data_13_14;
    wire token_13_14;
    wire [5:0] proc_15_data_FIFO_blk;
    wire [5:0] proc_15_data_PIPO_blk;
    wire [5:0] proc_15_start_FIFO_blk;
    wire [5:0] proc_15_TLF_FIFO_blk;
    wire [5:0] proc_15_input_sync_blk;
    wire [5:0] proc_15_output_sync_blk;
    wire [5:0] proc_dep_vld_vec_15;
    reg [5:0] proc_dep_vld_vec_15_reg;
    wire [5:0] in_chan_dep_vld_vec_15;
    wire [329:0] in_chan_dep_data_vec_15;
    wire [5:0] token_in_vec_15;
    wire [5:0] out_chan_dep_vld_vec_15;
    wire [54:0] out_chan_dep_data_15;
    wire [5:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_16_15;
    wire [54:0] dep_chan_data_16_15;
    wire token_16_15;
    wire dep_chan_vld_42_15;
    wire [54:0] dep_chan_data_42_15;
    wire token_42_15;
    wire dep_chan_vld_43_15;
    wire [54:0] dep_chan_data_43_15;
    wire token_43_15;
    wire dep_chan_vld_44_15;
    wire [54:0] dep_chan_data_44_15;
    wire token_44_15;
    wire dep_chan_vld_48_15;
    wire [54:0] dep_chan_data_48_15;
    wire token_48_15;
    wire dep_chan_vld_52_15;
    wire [54:0] dep_chan_data_52_15;
    wire token_52_15;
    wire [1:0] proc_16_data_FIFO_blk;
    wire [1:0] proc_16_data_PIPO_blk;
    wire [1:0] proc_16_start_FIFO_blk;
    wire [1:0] proc_16_TLF_FIFO_blk;
    wire [1:0] proc_16_input_sync_blk;
    wire [1:0] proc_16_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_16;
    reg [1:0] proc_dep_vld_vec_16_reg;
    wire [1:0] in_chan_dep_vld_vec_16;
    wire [109:0] in_chan_dep_data_vec_16;
    wire [1:0] token_in_vec_16;
    wire [1:0] out_chan_dep_vld_vec_16;
    wire [54:0] out_chan_dep_data_16;
    wire [1:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_15_16;
    wire [54:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_54_16;
    wire [54:0] dep_chan_data_54_16;
    wire token_54_16;
    wire [3:0] proc_17_data_FIFO_blk;
    wire [3:0] proc_17_data_PIPO_blk;
    wire [3:0] proc_17_start_FIFO_blk;
    wire [3:0] proc_17_TLF_FIFO_blk;
    wire [3:0] proc_17_input_sync_blk;
    wire [3:0] proc_17_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_17;
    reg [3:0] proc_dep_vld_vec_17_reg;
    wire [3:0] in_chan_dep_vld_vec_17;
    wire [219:0] in_chan_dep_data_vec_17;
    wire [3:0] token_in_vec_17;
    wire [3:0] out_chan_dep_vld_vec_17;
    wire [54:0] out_chan_dep_data_17;
    wire [3:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_10_17;
    wire [54:0] dep_chan_data_10_17;
    wire token_10_17;
    wire dep_chan_vld_18_17;
    wire [54:0] dep_chan_data_18_17;
    wire token_18_17;
    wire dep_chan_vld_19_17;
    wire [54:0] dep_chan_data_19_17;
    wire token_19_17;
    wire dep_chan_vld_20_17;
    wire [54:0] dep_chan_data_20_17;
    wire token_20_17;
    wire [1:0] proc_18_data_FIFO_blk;
    wire [1:0] proc_18_data_PIPO_blk;
    wire [1:0] proc_18_start_FIFO_blk;
    wire [1:0] proc_18_TLF_FIFO_blk;
    wire [1:0] proc_18_input_sync_blk;
    wire [1:0] proc_18_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_18;
    reg [1:0] proc_dep_vld_vec_18_reg;
    wire [1:0] in_chan_dep_vld_vec_18;
    wire [109:0] in_chan_dep_data_vec_18;
    wire [1:0] token_in_vec_18;
    wire [1:0] out_chan_dep_vld_vec_18;
    wire [54:0] out_chan_dep_data_18;
    wire [1:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_17_18;
    wire [54:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_19_18;
    wire [54:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [4:0] proc_19_data_FIFO_blk;
    wire [4:0] proc_19_data_PIPO_blk;
    wire [4:0] proc_19_start_FIFO_blk;
    wire [4:0] proc_19_TLF_FIFO_blk;
    wire [4:0] proc_19_input_sync_blk;
    wire [4:0] proc_19_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_19;
    reg [4:0] proc_dep_vld_vec_19_reg;
    wire [4:0] in_chan_dep_vld_vec_19;
    wire [274:0] in_chan_dep_data_vec_19;
    wire [4:0] token_in_vec_19;
    wire [4:0] out_chan_dep_vld_vec_19;
    wire [54:0] out_chan_dep_data_19;
    wire [4:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_17_19;
    wire [54:0] dep_chan_data_17_19;
    wire token_17_19;
    wire dep_chan_vld_18_19;
    wire [54:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [54:0] dep_chan_data_20_19;
    wire token_20_19;
    wire dep_chan_vld_21_19;
    wire [54:0] dep_chan_data_21_19;
    wire token_21_19;
    wire dep_chan_vld_22_19;
    wire [54:0] dep_chan_data_22_19;
    wire token_22_19;
    wire [8:0] proc_20_data_FIFO_blk;
    wire [8:0] proc_20_data_PIPO_blk;
    wire [8:0] proc_20_start_FIFO_blk;
    wire [8:0] proc_20_TLF_FIFO_blk;
    wire [8:0] proc_20_input_sync_blk;
    wire [8:0] proc_20_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_20;
    reg [8:0] proc_dep_vld_vec_20_reg;
    wire [8:0] in_chan_dep_vld_vec_20;
    wire [494:0] in_chan_dep_data_vec_20;
    wire [8:0] token_in_vec_20;
    wire [8:0] out_chan_dep_vld_vec_20;
    wire [54:0] out_chan_dep_data_20;
    wire [8:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_17_20;
    wire [54:0] dep_chan_data_17_20;
    wire token_17_20;
    wire dep_chan_vld_19_20;
    wire [54:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_21_20;
    wire [54:0] dep_chan_data_21_20;
    wire token_21_20;
    wire dep_chan_vld_22_20;
    wire [54:0] dep_chan_data_22_20;
    wire token_22_20;
    wire dep_chan_vld_23_20;
    wire [54:0] dep_chan_data_23_20;
    wire token_23_20;
    wire dep_chan_vld_26_20;
    wire [54:0] dep_chan_data_26_20;
    wire token_26_20;
    wire dep_chan_vld_43_20;
    wire [54:0] dep_chan_data_43_20;
    wire token_43_20;
    wire dep_chan_vld_46_20;
    wire [54:0] dep_chan_data_46_20;
    wire token_46_20;
    wire dep_chan_vld_50_20;
    wire [54:0] dep_chan_data_50_20;
    wire token_50_20;
    wire [2:0] proc_21_data_FIFO_blk;
    wire [2:0] proc_21_data_PIPO_blk;
    wire [2:0] proc_21_start_FIFO_blk;
    wire [2:0] proc_21_TLF_FIFO_blk;
    wire [2:0] proc_21_input_sync_blk;
    wire [2:0] proc_21_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_21;
    reg [2:0] proc_dep_vld_vec_21_reg;
    wire [2:0] in_chan_dep_vld_vec_21;
    wire [164:0] in_chan_dep_data_vec_21;
    wire [2:0] token_in_vec_21;
    wire [2:0] out_chan_dep_vld_vec_21;
    wire [54:0] out_chan_dep_data_21;
    wire [2:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_19_21;
    wire [54:0] dep_chan_data_19_21;
    wire token_19_21;
    wire dep_chan_vld_20_21;
    wire [54:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_24_21;
    wire [54:0] dep_chan_data_24_21;
    wire token_24_21;
    wire [3:0] proc_22_data_FIFO_blk;
    wire [3:0] proc_22_data_PIPO_blk;
    wire [3:0] proc_22_start_FIFO_blk;
    wire [3:0] proc_22_TLF_FIFO_blk;
    wire [3:0] proc_22_input_sync_blk;
    wire [3:0] proc_22_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_22;
    reg [3:0] proc_dep_vld_vec_22_reg;
    wire [3:0] in_chan_dep_vld_vec_22;
    wire [219:0] in_chan_dep_data_vec_22;
    wire [3:0] token_in_vec_22;
    wire [3:0] out_chan_dep_vld_vec_22;
    wire [54:0] out_chan_dep_data_22;
    wire [3:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_11_22;
    wire [54:0] dep_chan_data_11_22;
    wire token_11_22;
    wire dep_chan_vld_19_22;
    wire [54:0] dep_chan_data_19_22;
    wire token_19_22;
    wire dep_chan_vld_20_22;
    wire [54:0] dep_chan_data_20_22;
    wire token_20_22;
    wire dep_chan_vld_23_22;
    wire [54:0] dep_chan_data_23_22;
    wire token_23_22;
    wire [7:0] proc_23_data_FIFO_blk;
    wire [7:0] proc_23_data_PIPO_blk;
    wire [7:0] proc_23_start_FIFO_blk;
    wire [7:0] proc_23_TLF_FIFO_blk;
    wire [7:0] proc_23_input_sync_blk;
    wire [7:0] proc_23_output_sync_blk;
    wire [7:0] proc_dep_vld_vec_23;
    reg [7:0] proc_dep_vld_vec_23_reg;
    wire [7:0] in_chan_dep_vld_vec_23;
    wire [439:0] in_chan_dep_data_vec_23;
    wire [7:0] token_in_vec_23;
    wire [7:0] out_chan_dep_vld_vec_23;
    wire [54:0] out_chan_dep_data_23;
    wire [7:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_20_23;
    wire [54:0] dep_chan_data_20_23;
    wire token_20_23;
    wire dep_chan_vld_22_23;
    wire [54:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_24_23;
    wire [54:0] dep_chan_data_24_23;
    wire token_24_23;
    wire dep_chan_vld_25_23;
    wire [54:0] dep_chan_data_25_23;
    wire token_25_23;
    wire dep_chan_vld_26_23;
    wire [54:0] dep_chan_data_26_23;
    wire token_26_23;
    wire dep_chan_vld_29_23;
    wire [54:0] dep_chan_data_29_23;
    wire token_29_23;
    wire dep_chan_vld_44_23;
    wire [54:0] dep_chan_data_44_23;
    wire token_44_23;
    wire dep_chan_vld_50_23;
    wire [54:0] dep_chan_data_50_23;
    wire token_50_23;
    wire [4:0] proc_24_data_FIFO_blk;
    wire [4:0] proc_24_data_PIPO_blk;
    wire [4:0] proc_24_start_FIFO_blk;
    wire [4:0] proc_24_TLF_FIFO_blk;
    wire [4:0] proc_24_input_sync_blk;
    wire [4:0] proc_24_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_24;
    reg [4:0] proc_dep_vld_vec_24_reg;
    wire [4:0] in_chan_dep_vld_vec_24;
    wire [274:0] in_chan_dep_data_vec_24;
    wire [4:0] token_in_vec_24;
    wire [4:0] out_chan_dep_vld_vec_24;
    wire [54:0] out_chan_dep_data_24;
    wire [4:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_21_24;
    wire [54:0] dep_chan_data_21_24;
    wire token_21_24;
    wire dep_chan_vld_23_24;
    wire [54:0] dep_chan_data_23_24;
    wire token_23_24;
    wire dep_chan_vld_27_24;
    wire [54:0] dep_chan_data_27_24;
    wire token_27_24;
    wire dep_chan_vld_28_24;
    wire [54:0] dep_chan_data_28_24;
    wire token_28_24;
    wire dep_chan_vld_29_24;
    wire [54:0] dep_chan_data_29_24;
    wire token_29_24;
    wire [2:0] proc_25_data_FIFO_blk;
    wire [2:0] proc_25_data_PIPO_blk;
    wire [2:0] proc_25_start_FIFO_blk;
    wire [2:0] proc_25_TLF_FIFO_blk;
    wire [2:0] proc_25_input_sync_blk;
    wire [2:0] proc_25_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_25;
    reg [2:0] proc_dep_vld_vec_25_reg;
    wire [2:0] in_chan_dep_vld_vec_25;
    wire [164:0] in_chan_dep_data_vec_25;
    wire [2:0] token_in_vec_25;
    wire [2:0] out_chan_dep_vld_vec_25;
    wire [54:0] out_chan_dep_data_25;
    wire [2:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_23_25;
    wire [54:0] dep_chan_data_23_25;
    wire token_23_25;
    wire dep_chan_vld_32_25;
    wire [54:0] dep_chan_data_32_25;
    wire token_32_25;
    wire dep_chan_vld_41_25;
    wire [54:0] dep_chan_data_41_25;
    wire token_41_25;
    wire [2:0] proc_26_data_FIFO_blk;
    wire [2:0] proc_26_data_PIPO_blk;
    wire [2:0] proc_26_start_FIFO_blk;
    wire [2:0] proc_26_TLF_FIFO_blk;
    wire [2:0] proc_26_input_sync_blk;
    wire [2:0] proc_26_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_26;
    reg [2:0] proc_dep_vld_vec_26_reg;
    wire [2:0] in_chan_dep_vld_vec_26;
    wire [164:0] in_chan_dep_data_vec_26;
    wire [2:0] token_in_vec_26;
    wire [2:0] out_chan_dep_vld_vec_26;
    wire [54:0] out_chan_dep_data_26;
    wire [2:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_20_26;
    wire [54:0] dep_chan_data_20_26;
    wire token_20_26;
    wire dep_chan_vld_23_26;
    wire [54:0] dep_chan_data_23_26;
    wire token_23_26;
    wire dep_chan_vld_32_26;
    wire [54:0] dep_chan_data_32_26;
    wire token_32_26;
    wire [1:0] proc_27_data_FIFO_blk;
    wire [1:0] proc_27_data_PIPO_blk;
    wire [1:0] proc_27_start_FIFO_blk;
    wire [1:0] proc_27_TLF_FIFO_blk;
    wire [1:0] proc_27_input_sync_blk;
    wire [1:0] proc_27_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_27;
    reg [1:0] proc_dep_vld_vec_27_reg;
    wire [1:0] in_chan_dep_vld_vec_27;
    wire [109:0] in_chan_dep_data_vec_27;
    wire [1:0] token_in_vec_27;
    wire [1:0] out_chan_dep_vld_vec_27;
    wire [54:0] out_chan_dep_data_27;
    wire [1:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_24_27;
    wire [54:0] dep_chan_data_24_27;
    wire token_24_27;
    wire dep_chan_vld_29_27;
    wire [54:0] dep_chan_data_29_27;
    wire token_29_27;
    wire [1:0] proc_28_data_FIFO_blk;
    wire [1:0] proc_28_data_PIPO_blk;
    wire [1:0] proc_28_start_FIFO_blk;
    wire [1:0] proc_28_TLF_FIFO_blk;
    wire [1:0] proc_28_input_sync_blk;
    wire [1:0] proc_28_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_28;
    reg [1:0] proc_dep_vld_vec_28_reg;
    wire [1:0] in_chan_dep_vld_vec_28;
    wire [109:0] in_chan_dep_data_vec_28;
    wire [1:0] token_in_vec_28;
    wire [1:0] out_chan_dep_vld_vec_28;
    wire [54:0] out_chan_dep_data_28;
    wire [1:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_24_28;
    wire [54:0] dep_chan_data_24_28;
    wire token_24_28;
    wire dep_chan_vld_29_28;
    wire [54:0] dep_chan_data_29_28;
    wire token_29_28;
    wire [4:0] proc_29_data_FIFO_blk;
    wire [4:0] proc_29_data_PIPO_blk;
    wire [4:0] proc_29_start_FIFO_blk;
    wire [4:0] proc_29_TLF_FIFO_blk;
    wire [4:0] proc_29_input_sync_blk;
    wire [4:0] proc_29_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_29;
    reg [4:0] proc_dep_vld_vec_29_reg;
    wire [4:0] in_chan_dep_vld_vec_29;
    wire [274:0] in_chan_dep_data_vec_29;
    wire [4:0] token_in_vec_29;
    wire [4:0] out_chan_dep_vld_vec_29;
    wire [54:0] out_chan_dep_data_29;
    wire [4:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_4_29;
    wire [54:0] dep_chan_data_4_29;
    wire token_4_29;
    wire dep_chan_vld_23_29;
    wire [54:0] dep_chan_data_23_29;
    wire token_23_29;
    wire dep_chan_vld_24_29;
    wire [54:0] dep_chan_data_24_29;
    wire token_24_29;
    wire dep_chan_vld_27_29;
    wire [54:0] dep_chan_data_27_29;
    wire token_27_29;
    wire dep_chan_vld_28_29;
    wire [54:0] dep_chan_data_28_29;
    wire token_28_29;
    wire [4:0] proc_30_data_FIFO_blk;
    wire [4:0] proc_30_data_PIPO_blk;
    wire [4:0] proc_30_start_FIFO_blk;
    wire [4:0] proc_30_TLF_FIFO_blk;
    wire [4:0] proc_30_input_sync_blk;
    wire [4:0] proc_30_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_30;
    reg [4:0] proc_dep_vld_vec_30_reg;
    wire [4:0] in_chan_dep_vld_vec_30;
    wire [274:0] in_chan_dep_data_vec_30;
    wire [4:0] token_in_vec_30;
    wire [4:0] out_chan_dep_vld_vec_30;
    wire [54:0] out_chan_dep_data_30;
    wire [4:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_32_30;
    wire [54:0] dep_chan_data_32_30;
    wire token_32_30;
    wire dep_chan_vld_41_30;
    wire [54:0] dep_chan_data_41_30;
    wire token_41_30;
    wire dep_chan_vld_45_30;
    wire [54:0] dep_chan_data_45_30;
    wire token_45_30;
    wire dep_chan_vld_50_30;
    wire [54:0] dep_chan_data_50_30;
    wire token_50_30;
    wire dep_chan_vld_54_30;
    wire [54:0] dep_chan_data_54_30;
    wire token_54_30;
    wire [4:0] proc_31_data_FIFO_blk;
    wire [4:0] proc_31_data_PIPO_blk;
    wire [4:0] proc_31_start_FIFO_blk;
    wire [4:0] proc_31_TLF_FIFO_blk;
    wire [4:0] proc_31_input_sync_blk;
    wire [4:0] proc_31_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_31;
    reg [4:0] proc_dep_vld_vec_31_reg;
    wire [4:0] in_chan_dep_vld_vec_31;
    wire [274:0] in_chan_dep_data_vec_31;
    wire [4:0] token_in_vec_31;
    wire [4:0] out_chan_dep_vld_vec_31;
    wire [54:0] out_chan_dep_data_31;
    wire [4:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_3_31;
    wire [54:0] dep_chan_data_3_31;
    wire token_3_31;
    wire dep_chan_vld_33_31;
    wire [54:0] dep_chan_data_33_31;
    wire token_33_31;
    wire dep_chan_vld_34_31;
    wire [54:0] dep_chan_data_34_31;
    wire token_34_31;
    wire dep_chan_vld_36_31;
    wire [54:0] dep_chan_data_36_31;
    wire token_36_31;
    wire dep_chan_vld_41_31;
    wire [54:0] dep_chan_data_41_31;
    wire token_41_31;
    wire [5:0] proc_32_data_FIFO_blk;
    wire [5:0] proc_32_data_PIPO_blk;
    wire [5:0] proc_32_start_FIFO_blk;
    wire [5:0] proc_32_TLF_FIFO_blk;
    wire [5:0] proc_32_input_sync_blk;
    wire [5:0] proc_32_output_sync_blk;
    wire [5:0] proc_dep_vld_vec_32;
    reg [5:0] proc_dep_vld_vec_32_reg;
    wire [5:0] in_chan_dep_vld_vec_32;
    wire [329:0] in_chan_dep_data_vec_32;
    wire [5:0] token_in_vec_32;
    wire [5:0] out_chan_dep_vld_vec_32;
    wire [54:0] out_chan_dep_data_32;
    wire [5:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_25_32;
    wire [54:0] dep_chan_data_25_32;
    wire token_25_32;
    wire dep_chan_vld_26_32;
    wire [54:0] dep_chan_data_26_32;
    wire token_26_32;
    wire dep_chan_vld_30_32;
    wire [54:0] dep_chan_data_30_32;
    wire token_30_32;
    wire dep_chan_vld_35_32;
    wire [54:0] dep_chan_data_35_32;
    wire token_35_32;
    wire dep_chan_vld_38_32;
    wire [54:0] dep_chan_data_38_32;
    wire token_38_32;
    wire dep_chan_vld_42_32;
    wire [54:0] dep_chan_data_42_32;
    wire token_42_32;
    wire [1:0] proc_33_data_FIFO_blk;
    wire [1:0] proc_33_data_PIPO_blk;
    wire [1:0] proc_33_start_FIFO_blk;
    wire [1:0] proc_33_TLF_FIFO_blk;
    wire [1:0] proc_33_input_sync_blk;
    wire [1:0] proc_33_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_33;
    reg [1:0] proc_dep_vld_vec_33_reg;
    wire [1:0] in_chan_dep_vld_vec_33;
    wire [109:0] in_chan_dep_data_vec_33;
    wire [1:0] token_in_vec_33;
    wire [1:0] out_chan_dep_vld_vec_33;
    wire [54:0] out_chan_dep_data_33;
    wire [1:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_31_33;
    wire [54:0] dep_chan_data_31_33;
    wire token_31_33;
    wire dep_chan_vld_36_33;
    wire [54:0] dep_chan_data_36_33;
    wire token_36_33;
    wire [1:0] proc_34_data_FIFO_blk;
    wire [1:0] proc_34_data_PIPO_blk;
    wire [1:0] proc_34_start_FIFO_blk;
    wire [1:0] proc_34_TLF_FIFO_blk;
    wire [1:0] proc_34_input_sync_blk;
    wire [1:0] proc_34_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_34;
    reg [1:0] proc_dep_vld_vec_34_reg;
    wire [1:0] in_chan_dep_vld_vec_34;
    wire [109:0] in_chan_dep_data_vec_34;
    wire [1:0] token_in_vec_34;
    wire [1:0] out_chan_dep_vld_vec_34;
    wire [54:0] out_chan_dep_data_34;
    wire [1:0] token_out_vec_34;
    wire dl_detect_out_34;
    wire dep_chan_vld_31_34;
    wire [54:0] dep_chan_data_31_34;
    wire token_31_34;
    wire dep_chan_vld_36_34;
    wire [54:0] dep_chan_data_36_34;
    wire token_36_34;
    wire [4:0] proc_35_data_FIFO_blk;
    wire [4:0] proc_35_data_PIPO_blk;
    wire [4:0] proc_35_start_FIFO_blk;
    wire [4:0] proc_35_TLF_FIFO_blk;
    wire [4:0] proc_35_input_sync_blk;
    wire [4:0] proc_35_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_35;
    reg [4:0] proc_dep_vld_vec_35_reg;
    wire [4:0] in_chan_dep_vld_vec_35;
    wire [274:0] in_chan_dep_data_vec_35;
    wire [4:0] token_in_vec_35;
    wire [4:0] out_chan_dep_vld_vec_35;
    wire [54:0] out_chan_dep_data_35;
    wire [4:0] token_out_vec_35;
    wire dl_detect_out_35;
    wire dep_chan_vld_32_35;
    wire [54:0] dep_chan_data_32_35;
    wire token_32_35;
    wire dep_chan_vld_36_35;
    wire [54:0] dep_chan_data_36_35;
    wire token_36_35;
    wire dep_chan_vld_40_35;
    wire [54:0] dep_chan_data_40_35;
    wire token_40_35;
    wire dep_chan_vld_44_35;
    wire [54:0] dep_chan_data_44_35;
    wire token_44_35;
    wire dep_chan_vld_46_35;
    wire [54:0] dep_chan_data_46_35;
    wire token_46_35;
    wire [4:0] proc_36_data_FIFO_blk;
    wire [4:0] proc_36_data_PIPO_blk;
    wire [4:0] proc_36_start_FIFO_blk;
    wire [4:0] proc_36_TLF_FIFO_blk;
    wire [4:0] proc_36_input_sync_blk;
    wire [4:0] proc_36_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_36;
    reg [4:0] proc_dep_vld_vec_36_reg;
    wire [4:0] in_chan_dep_vld_vec_36;
    wire [274:0] in_chan_dep_data_vec_36;
    wire [4:0] token_in_vec_36;
    wire [4:0] out_chan_dep_vld_vec_36;
    wire [54:0] out_chan_dep_data_36;
    wire [4:0] token_out_vec_36;
    wire dl_detect_out_36;
    wire dep_chan_vld_31_36;
    wire [54:0] dep_chan_data_31_36;
    wire token_31_36;
    wire dep_chan_vld_33_36;
    wire [54:0] dep_chan_data_33_36;
    wire token_33_36;
    wire dep_chan_vld_34_36;
    wire [54:0] dep_chan_data_34_36;
    wire token_34_36;
    wire dep_chan_vld_35_36;
    wire [54:0] dep_chan_data_35_36;
    wire token_35_36;
    wire dep_chan_vld_37_36;
    wire [54:0] dep_chan_data_37_36;
    wire token_37_36;
    wire [1:0] proc_37_data_FIFO_blk;
    wire [1:0] proc_37_data_PIPO_blk;
    wire [1:0] proc_37_start_FIFO_blk;
    wire [1:0] proc_37_TLF_FIFO_blk;
    wire [1:0] proc_37_input_sync_blk;
    wire [1:0] proc_37_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_37;
    reg [1:0] proc_dep_vld_vec_37_reg;
    wire [1:0] in_chan_dep_vld_vec_37;
    wire [109:0] in_chan_dep_data_vec_37;
    wire [1:0] token_in_vec_37;
    wire [1:0] out_chan_dep_vld_vec_37;
    wire [54:0] out_chan_dep_data_37;
    wire [1:0] token_out_vec_37;
    wire dl_detect_out_37;
    wire dep_chan_vld_36_37;
    wire [54:0] dep_chan_data_36_37;
    wire token_36_37;
    wire dep_chan_vld_39_37;
    wire [54:0] dep_chan_data_39_37;
    wire token_39_37;
    wire [4:0] proc_38_data_FIFO_blk;
    wire [4:0] proc_38_data_PIPO_blk;
    wire [4:0] proc_38_start_FIFO_blk;
    wire [4:0] proc_38_TLF_FIFO_blk;
    wire [4:0] proc_38_input_sync_blk;
    wire [4:0] proc_38_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_38;
    reg [4:0] proc_dep_vld_vec_38_reg;
    wire [4:0] in_chan_dep_vld_vec_38;
    wire [274:0] in_chan_dep_data_vec_38;
    wire [4:0] token_in_vec_38;
    wire [4:0] out_chan_dep_vld_vec_38;
    wire [54:0] out_chan_dep_data_38;
    wire [4:0] token_out_vec_38;
    wire dl_detect_out_38;
    wire dep_chan_vld_32_38;
    wire [54:0] dep_chan_data_32_38;
    wire token_32_38;
    wire dep_chan_vld_39_38;
    wire [54:0] dep_chan_data_39_38;
    wire token_39_38;
    wire dep_chan_vld_40_38;
    wire [54:0] dep_chan_data_40_38;
    wire token_40_38;
    wire dep_chan_vld_43_38;
    wire [54:0] dep_chan_data_43_38;
    wire token_43_38;
    wire dep_chan_vld_45_38;
    wire [54:0] dep_chan_data_45_38;
    wire token_45_38;
    wire [2:0] proc_39_data_FIFO_blk;
    wire [2:0] proc_39_data_PIPO_blk;
    wire [2:0] proc_39_start_FIFO_blk;
    wire [2:0] proc_39_TLF_FIFO_blk;
    wire [2:0] proc_39_input_sync_blk;
    wire [2:0] proc_39_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_39;
    reg [2:0] proc_dep_vld_vec_39_reg;
    wire [2:0] in_chan_dep_vld_vec_39;
    wire [164:0] in_chan_dep_data_vec_39;
    wire [2:0] token_in_vec_39;
    wire [2:0] out_chan_dep_vld_vec_39;
    wire [54:0] out_chan_dep_data_39;
    wire [2:0] token_out_vec_39;
    wire dl_detect_out_39;
    wire dep_chan_vld_13_39;
    wire [54:0] dep_chan_data_13_39;
    wire token_13_39;
    wire dep_chan_vld_37_39;
    wire [54:0] dep_chan_data_37_39;
    wire token_37_39;
    wire dep_chan_vld_38_39;
    wire [54:0] dep_chan_data_38_39;
    wire token_38_39;
    wire [3:0] proc_40_data_FIFO_blk;
    wire [3:0] proc_40_data_PIPO_blk;
    wire [3:0] proc_40_start_FIFO_blk;
    wire [3:0] proc_40_TLF_FIFO_blk;
    wire [3:0] proc_40_input_sync_blk;
    wire [3:0] proc_40_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_40;
    reg [3:0] proc_dep_vld_vec_40_reg;
    wire [3:0] in_chan_dep_vld_vec_40;
    wire [219:0] in_chan_dep_data_vec_40;
    wire [3:0] token_in_vec_40;
    wire [3:0] out_chan_dep_vld_vec_40;
    wire [54:0] out_chan_dep_data_40;
    wire [3:0] token_out_vec_40;
    wire dl_detect_out_40;
    wire dep_chan_vld_12_40;
    wire [54:0] dep_chan_data_12_40;
    wire token_12_40;
    wire dep_chan_vld_35_40;
    wire [54:0] dep_chan_data_35_40;
    wire token_35_40;
    wire dep_chan_vld_38_40;
    wire [54:0] dep_chan_data_38_40;
    wire token_38_40;
    wire dep_chan_vld_42_40;
    wire [54:0] dep_chan_data_42_40;
    wire token_42_40;
    wire [2:0] proc_41_data_FIFO_blk;
    wire [2:0] proc_41_data_PIPO_blk;
    wire [2:0] proc_41_start_FIFO_blk;
    wire [2:0] proc_41_TLF_FIFO_blk;
    wire [2:0] proc_41_input_sync_blk;
    wire [2:0] proc_41_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_41;
    reg [2:0] proc_dep_vld_vec_41_reg;
    wire [2:0] in_chan_dep_vld_vec_41;
    wire [164:0] in_chan_dep_data_vec_41;
    wire [2:0] token_in_vec_41;
    wire [2:0] out_chan_dep_vld_vec_41;
    wire [54:0] out_chan_dep_data_41;
    wire [2:0] token_out_vec_41;
    wire dl_detect_out_41;
    wire dep_chan_vld_25_41;
    wire [54:0] dep_chan_data_25_41;
    wire token_25_41;
    wire dep_chan_vld_30_41;
    wire [54:0] dep_chan_data_30_41;
    wire token_30_41;
    wire dep_chan_vld_31_41;
    wire [54:0] dep_chan_data_31_41;
    wire token_31_41;
    wire [3:0] proc_42_data_FIFO_blk;
    wire [3:0] proc_42_data_PIPO_blk;
    wire [3:0] proc_42_start_FIFO_blk;
    wire [3:0] proc_42_TLF_FIFO_blk;
    wire [3:0] proc_42_input_sync_blk;
    wire [3:0] proc_42_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_42;
    reg [3:0] proc_dep_vld_vec_42_reg;
    wire [3:0] in_chan_dep_vld_vec_42;
    wire [219:0] in_chan_dep_data_vec_42;
    wire [3:0] token_in_vec_42;
    wire [3:0] out_chan_dep_vld_vec_42;
    wire [54:0] out_chan_dep_data_42;
    wire [3:0] token_out_vec_42;
    wire dl_detect_out_42;
    wire dep_chan_vld_15_42;
    wire [54:0] dep_chan_data_15_42;
    wire token_15_42;
    wire dep_chan_vld_32_42;
    wire [54:0] dep_chan_data_32_42;
    wire token_32_42;
    wire dep_chan_vld_40_42;
    wire [54:0] dep_chan_data_40_42;
    wire token_40_42;
    wire dep_chan_vld_54_42;
    wire [54:0] dep_chan_data_54_42;
    wire token_54_42;
    wire [2:0] proc_43_data_FIFO_blk;
    wire [2:0] proc_43_data_PIPO_blk;
    wire [2:0] proc_43_start_FIFO_blk;
    wire [2:0] proc_43_TLF_FIFO_blk;
    wire [2:0] proc_43_input_sync_blk;
    wire [2:0] proc_43_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_43;
    reg [2:0] proc_dep_vld_vec_43_reg;
    wire [2:0] in_chan_dep_vld_vec_43;
    wire [164:0] in_chan_dep_data_vec_43;
    wire [2:0] token_in_vec_43;
    wire [2:0] out_chan_dep_vld_vec_43;
    wire [54:0] out_chan_dep_data_43;
    wire [2:0] token_out_vec_43;
    wire dl_detect_out_43;
    wire dep_chan_vld_15_43;
    wire [54:0] dep_chan_data_15_43;
    wire token_15_43;
    wire dep_chan_vld_20_43;
    wire [54:0] dep_chan_data_20_43;
    wire token_20_43;
    wire dep_chan_vld_38_43;
    wire [54:0] dep_chan_data_38_43;
    wire token_38_43;
    wire [2:0] proc_44_data_FIFO_blk;
    wire [2:0] proc_44_data_PIPO_blk;
    wire [2:0] proc_44_start_FIFO_blk;
    wire [2:0] proc_44_TLF_FIFO_blk;
    wire [2:0] proc_44_input_sync_blk;
    wire [2:0] proc_44_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_44;
    reg [2:0] proc_dep_vld_vec_44_reg;
    wire [2:0] in_chan_dep_vld_vec_44;
    wire [164:0] in_chan_dep_data_vec_44;
    wire [2:0] token_in_vec_44;
    wire [2:0] out_chan_dep_vld_vec_44;
    wire [54:0] out_chan_dep_data_44;
    wire [2:0] token_out_vec_44;
    wire dl_detect_out_44;
    wire dep_chan_vld_15_44;
    wire [54:0] dep_chan_data_15_44;
    wire token_15_44;
    wire dep_chan_vld_23_44;
    wire [54:0] dep_chan_data_23_44;
    wire token_23_44;
    wire dep_chan_vld_35_44;
    wire [54:0] dep_chan_data_35_44;
    wire token_35_44;
    wire [2:0] proc_45_data_FIFO_blk;
    wire [2:0] proc_45_data_PIPO_blk;
    wire [2:0] proc_45_start_FIFO_blk;
    wire [2:0] proc_45_TLF_FIFO_blk;
    wire [2:0] proc_45_input_sync_blk;
    wire [2:0] proc_45_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_45;
    reg [2:0] proc_dep_vld_vec_45_reg;
    wire [2:0] in_chan_dep_vld_vec_45;
    wire [164:0] in_chan_dep_data_vec_45;
    wire [2:0] token_in_vec_45;
    wire [2:0] out_chan_dep_vld_vec_45;
    wire [54:0] out_chan_dep_data_45;
    wire [2:0] token_out_vec_45;
    wire dl_detect_out_45;
    wire dep_chan_vld_30_45;
    wire [54:0] dep_chan_data_30_45;
    wire token_30_45;
    wire dep_chan_vld_38_45;
    wire [54:0] dep_chan_data_38_45;
    wire token_38_45;
    wire dep_chan_vld_50_45;
    wire [54:0] dep_chan_data_50_45;
    wire token_50_45;
    wire [2:0] proc_46_data_FIFO_blk;
    wire [2:0] proc_46_data_PIPO_blk;
    wire [2:0] proc_46_start_FIFO_blk;
    wire [2:0] proc_46_TLF_FIFO_blk;
    wire [2:0] proc_46_input_sync_blk;
    wire [2:0] proc_46_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_46;
    reg [2:0] proc_dep_vld_vec_46_reg;
    wire [2:0] in_chan_dep_vld_vec_46;
    wire [164:0] in_chan_dep_data_vec_46;
    wire [2:0] token_in_vec_46;
    wire [2:0] out_chan_dep_vld_vec_46;
    wire [54:0] out_chan_dep_data_46;
    wire [2:0] token_out_vec_46;
    wire dl_detect_out_46;
    wire dep_chan_vld_20_46;
    wire [54:0] dep_chan_data_20_46;
    wire token_20_46;
    wire dep_chan_vld_35_46;
    wire [54:0] dep_chan_data_35_46;
    wire token_35_46;
    wire dep_chan_vld_50_46;
    wire [54:0] dep_chan_data_50_46;
    wire token_50_46;
    wire [0:0] proc_47_data_FIFO_blk;
    wire [0:0] proc_47_data_PIPO_blk;
    wire [0:0] proc_47_start_FIFO_blk;
    wire [0:0] proc_47_TLF_FIFO_blk;
    wire [0:0] proc_47_input_sync_blk;
    wire [0:0] proc_47_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_47;
    reg [0:0] proc_dep_vld_vec_47_reg;
    wire [0:0] in_chan_dep_vld_vec_47;
    wire [54:0] in_chan_dep_data_vec_47;
    wire [0:0] token_in_vec_47;
    wire [0:0] out_chan_dep_vld_vec_47;
    wire [54:0] out_chan_dep_data_47;
    wire [0:0] token_out_vec_47;
    wire dl_detect_out_47;
    wire dep_chan_vld_50_47;
    wire [54:0] dep_chan_data_50_47;
    wire token_50_47;
    wire [1:0] proc_48_data_FIFO_blk;
    wire [1:0] proc_48_data_PIPO_blk;
    wire [1:0] proc_48_start_FIFO_blk;
    wire [1:0] proc_48_TLF_FIFO_blk;
    wire [1:0] proc_48_input_sync_blk;
    wire [1:0] proc_48_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_48;
    reg [1:0] proc_dep_vld_vec_48_reg;
    wire [1:0] in_chan_dep_vld_vec_48;
    wire [109:0] in_chan_dep_data_vec_48;
    wire [1:0] token_in_vec_48;
    wire [1:0] out_chan_dep_vld_vec_48;
    wire [54:0] out_chan_dep_data_48;
    wire [1:0] token_out_vec_48;
    wire dl_detect_out_48;
    wire dep_chan_vld_15_48;
    wire [54:0] dep_chan_data_15_48;
    wire token_15_48;
    wire dep_chan_vld_50_48;
    wire [54:0] dep_chan_data_50_48;
    wire token_50_48;
    wire [0:0] proc_49_data_FIFO_blk;
    wire [0:0] proc_49_data_PIPO_blk;
    wire [0:0] proc_49_start_FIFO_blk;
    wire [0:0] proc_49_TLF_FIFO_blk;
    wire [0:0] proc_49_input_sync_blk;
    wire [0:0] proc_49_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_49;
    reg [0:0] proc_dep_vld_vec_49_reg;
    wire [0:0] in_chan_dep_vld_vec_49;
    wire [54:0] in_chan_dep_data_vec_49;
    wire [0:0] token_in_vec_49;
    wire [0:0] out_chan_dep_vld_vec_49;
    wire [54:0] out_chan_dep_data_49;
    wire [0:0] token_out_vec_49;
    wire dl_detect_out_49;
    wire dep_chan_vld_50_49;
    wire [54:0] dep_chan_data_50_49;
    wire token_50_49;
    wire [8:0] proc_50_data_FIFO_blk;
    wire [8:0] proc_50_data_PIPO_blk;
    wire [8:0] proc_50_start_FIFO_blk;
    wire [8:0] proc_50_TLF_FIFO_blk;
    wire [8:0] proc_50_input_sync_blk;
    wire [8:0] proc_50_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_50;
    reg [8:0] proc_dep_vld_vec_50_reg;
    wire [8:0] in_chan_dep_vld_vec_50;
    wire [494:0] in_chan_dep_data_vec_50;
    wire [8:0] token_in_vec_50;
    wire [8:0] out_chan_dep_vld_vec_50;
    wire [54:0] out_chan_dep_data_50;
    wire [8:0] token_out_vec_50;
    wire dl_detect_out_50;
    wire dep_chan_vld_20_50;
    wire [54:0] dep_chan_data_20_50;
    wire token_20_50;
    wire dep_chan_vld_23_50;
    wire [54:0] dep_chan_data_23_50;
    wire token_23_50;
    wire dep_chan_vld_30_50;
    wire [54:0] dep_chan_data_30_50;
    wire token_30_50;
    wire dep_chan_vld_45_50;
    wire [54:0] dep_chan_data_45_50;
    wire token_45_50;
    wire dep_chan_vld_46_50;
    wire [54:0] dep_chan_data_46_50;
    wire token_46_50;
    wire dep_chan_vld_47_50;
    wire [54:0] dep_chan_data_47_50;
    wire token_47_50;
    wire dep_chan_vld_48_50;
    wire [54:0] dep_chan_data_48_50;
    wire token_48_50;
    wire dep_chan_vld_49_50;
    wire [54:0] dep_chan_data_49_50;
    wire token_49_50;
    wire dep_chan_vld_54_50;
    wire [54:0] dep_chan_data_54_50;
    wire token_54_50;
    wire [0:0] proc_51_data_FIFO_blk;
    wire [0:0] proc_51_data_PIPO_blk;
    wire [0:0] proc_51_start_FIFO_blk;
    wire [0:0] proc_51_TLF_FIFO_blk;
    wire [0:0] proc_51_input_sync_blk;
    wire [0:0] proc_51_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_51;
    reg [0:0] proc_dep_vld_vec_51_reg;
    wire [0:0] in_chan_dep_vld_vec_51;
    wire [54:0] in_chan_dep_data_vec_51;
    wire [0:0] token_in_vec_51;
    wire [0:0] out_chan_dep_vld_vec_51;
    wire [54:0] out_chan_dep_data_51;
    wire [0:0] token_out_vec_51;
    wire dl_detect_out_51;
    wire dep_chan_vld_54_51;
    wire [54:0] dep_chan_data_54_51;
    wire token_54_51;
    wire [1:0] proc_52_data_FIFO_blk;
    wire [1:0] proc_52_data_PIPO_blk;
    wire [1:0] proc_52_start_FIFO_blk;
    wire [1:0] proc_52_TLF_FIFO_blk;
    wire [1:0] proc_52_input_sync_blk;
    wire [1:0] proc_52_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_52;
    reg [1:0] proc_dep_vld_vec_52_reg;
    wire [1:0] in_chan_dep_vld_vec_52;
    wire [109:0] in_chan_dep_data_vec_52;
    wire [1:0] token_in_vec_52;
    wire [1:0] out_chan_dep_vld_vec_52;
    wire [54:0] out_chan_dep_data_52;
    wire [1:0] token_out_vec_52;
    wire dl_detect_out_52;
    wire dep_chan_vld_15_52;
    wire [54:0] dep_chan_data_15_52;
    wire token_15_52;
    wire dep_chan_vld_54_52;
    wire [54:0] dep_chan_data_54_52;
    wire token_54_52;
    wire [0:0] proc_53_data_FIFO_blk;
    wire [0:0] proc_53_data_PIPO_blk;
    wire [0:0] proc_53_start_FIFO_blk;
    wire [0:0] proc_53_TLF_FIFO_blk;
    wire [0:0] proc_53_input_sync_blk;
    wire [0:0] proc_53_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_53;
    reg [0:0] proc_dep_vld_vec_53_reg;
    wire [0:0] in_chan_dep_vld_vec_53;
    wire [54:0] in_chan_dep_data_vec_53;
    wire [0:0] token_in_vec_53;
    wire [0:0] out_chan_dep_vld_vec_53;
    wire [54:0] out_chan_dep_data_53;
    wire [0:0] token_out_vec_53;
    wire dl_detect_out_53;
    wire dep_chan_vld_54_53;
    wire [54:0] dep_chan_data_54_53;
    wire token_54_53;
    wire [6:0] proc_54_data_FIFO_blk;
    wire [6:0] proc_54_data_PIPO_blk;
    wire [6:0] proc_54_start_FIFO_blk;
    wire [6:0] proc_54_TLF_FIFO_blk;
    wire [6:0] proc_54_input_sync_blk;
    wire [6:0] proc_54_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_54;
    reg [6:0] proc_dep_vld_vec_54_reg;
    wire [6:0] in_chan_dep_vld_vec_54;
    wire [384:0] in_chan_dep_data_vec_54;
    wire [6:0] token_in_vec_54;
    wire [6:0] out_chan_dep_vld_vec_54;
    wire [54:0] out_chan_dep_data_54;
    wire [6:0] token_out_vec_54;
    wire dl_detect_out_54;
    wire dep_chan_vld_16_54;
    wire [54:0] dep_chan_data_16_54;
    wire token_16_54;
    wire dep_chan_vld_30_54;
    wire [54:0] dep_chan_data_30_54;
    wire token_30_54;
    wire dep_chan_vld_42_54;
    wire [54:0] dep_chan_data_42_54;
    wire token_42_54;
    wire dep_chan_vld_50_54;
    wire [54:0] dep_chan_data_50_54;
    wire token_50_54;
    wire dep_chan_vld_51_54;
    wire [54:0] dep_chan_data_51_54;
    wire token_51_54;
    wire dep_chan_vld_52_54;
    wire [54:0] dep_chan_data_52_54;
    wire token_52_54;
    wire dep_chan_vld_53_54;
    wire [54:0] dep_chan_data_53_54;
    wire token_53_54;
    wire [54:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [54:0] origin;

    // Process: entry_proc_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 0, 1, 1) rocev2_top_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~entry_proc_U0.local_ip_address_c_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_8_0;
    assign in_chan_dep_data_vec_0[54 : 0] = dep_chan_data_8_0;
    assign token_in_vec_0[0] = token_8_0;
    assign dep_chan_vld_0_8 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_8 = out_chan_dep_data_0;
    assign token_0_8 = token_out_vec_0[0];

    // Process: convert_axis_to_net_axis_512_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 1, 1, 1) rocev2_top_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~convert_axis_to_net_axis_512_U0.s_axis_rx_data_internal_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[54 : 0] = dep_chan_data_5_1;
    assign token_in_vec_1[0] = token_5_1;
    assign dep_chan_vld_1_5 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_5 = out_chan_dep_data_1;
    assign token_1_5 = token_out_vec_1[0];

    // Process: convert_net_axis_to_axis_512_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 2, 1, 1) rocev2_top_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~convert_net_axis_to_axis_512_U0.m_axis_tx_data_internal_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_8_2;
    assign in_chan_dep_data_vec_2[54 : 0] = dep_chan_data_8_2;
    assign token_in_vec_2[0] = token_8_2;
    assign dep_chan_vld_2_8 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_8 = out_chan_dep_data_2;
    assign token_2_8 = token_out_vec_2[0];

    // Process: convert_axis_to_net_axis_512_1_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 3, 1, 1) rocev2_top_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~convert_axis_to_net_axis_512_1_U0.s_axis_mem_read_data_internal_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_31_3;
    assign in_chan_dep_data_vec_3[54 : 0] = dep_chan_data_31_3;
    assign token_in_vec_3[0] = token_31_3;
    assign dep_chan_vld_3_31 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_31 = out_chan_dep_data_3;
    assign token_3_31 = token_out_vec_3[0];

    // Process: convert_net_axis_to_axis_512_2_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 4, 1, 1) rocev2_top_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~convert_net_axis_to_axis_512_2_U0.m_axis_mem_write_data_internal_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_29_4;
    assign in_chan_dep_data_vec_4[54 : 0] = dep_chan_data_29_4;
    assign token_in_vec_4[0] = token_29_4;
    assign dep_chan_vld_4_29 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_29 = out_chan_dep_data_4;
    assign token_4_29 = token_out_vec_4[0];

    // Process: process_ipv4_512_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 5, 3, 3) rocev2_top_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~process_ipv4_512_U0.s_axis_rx_data_internal_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~process_ipv4_512_U0.rx_process2dropFifo_blk_n) | (~process_ipv4_512_U0.rx_process2dropLengthFifo_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~process_ipv4_512_U0.rx_ip2udpMetaFifo_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_1_5;
    assign in_chan_dep_data_vec_5[54 : 0] = dep_chan_data_1_5;
    assign token_in_vec_5[0] = token_1_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[109 : 55] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_11_5;
    assign in_chan_dep_data_vec_5[164 : 110] = dep_chan_data_11_5;
    assign token_in_vec_5[2] = token_11_5;
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[0];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[1];
    assign dep_chan_vld_5_11 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_11 = out_chan_dep_data_5;
    assign token_5_11 = token_out_vec_5[2];

    // Process: ipv4_drop_optional_ip_header_512_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 6, 2, 2) rocev2_top_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~ipv4_drop_optional_ip_header_512_U0.rx_process2dropLengthFifo_blk_n) | (~ipv4_drop_optional_ip_header_512_U0.rx_process2dropFifo_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~ipv4_drop_optional_ip_header_512_U0.rx_ip2udpFifo_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[54 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_9_6;
    assign in_chan_dep_data_vec_6[109 : 55] = dep_chan_data_9_6;
    assign token_in_vec_6[1] = token_9_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];
    assign dep_chan_vld_6_9 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_9 = out_chan_dep_data_6;
    assign token_6_9 = token_out_vec_6[1];

    // Process: ipv4_lshiftWordByOctet_512_2_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 7, 2, 2) rocev2_top_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~ipv4_lshiftWordByOctet_512_2_U0.tx_shift2ipv4Fifo_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~ipv4_lshiftWordByOctet_512_2_U0.tx_udp2ipFifo_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[54 : 0] = dep_chan_data_8_7;
    assign token_in_vec_7[0] = token_8_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_14_7;
    assign in_chan_dep_data_vec_7[109 : 55] = dep_chan_data_14_7;
    assign token_in_vec_7[1] = token_14_7;
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[0];
    assign dep_chan_vld_7_14 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_14 = out_chan_dep_data_7;
    assign token_7_14 = token_out_vec_7[1];

    // Process: ipv4_generate_ipv4_512_3_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 8, 4, 4) rocev2_top_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~ipv4_generate_ipv4_512_3_U0.local_ip_address_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~ipv4_generate_ipv4_512_3_U0.tx_udp2ipMetaFifo_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0 | (~ipv4_generate_ipv4_512_3_U0.m_axis_tx_data_internal_blk_n);
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0;
    assign proc_8_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    assign proc_8_data_FIFO_blk[3] = 1'b0 | (~ipv4_generate_ipv4_512_3_U0.tx_shift2ipv4Fifo_blk_n);
    assign proc_8_data_PIPO_blk[3] = 1'b0;
    assign proc_8_start_FIFO_blk[3] = 1'b0;
    assign proc_8_TLF_FIFO_blk[3] = 1'b0;
    assign proc_8_input_sync_blk[3] = 1'b0;
    assign proc_8_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_8[3] = dl_detect_out ? proc_dep_vld_vec_8_reg[3] : (proc_8_data_FIFO_blk[3] | proc_8_data_PIPO_blk[3] | proc_8_start_FIFO_blk[3] | proc_8_TLF_FIFO_blk[3] | proc_8_input_sync_blk[3] | proc_8_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_0_8;
    assign in_chan_dep_data_vec_8[54 : 0] = dep_chan_data_0_8;
    assign token_in_vec_8[0] = token_0_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_2_8;
    assign in_chan_dep_data_vec_8[109 : 55] = dep_chan_data_2_8;
    assign token_in_vec_8[1] = token_2_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[164 : 110] = dep_chan_data_7_8;
    assign token_in_vec_8[2] = token_7_8;
    assign in_chan_dep_vld_vec_8[3] = dep_chan_vld_12_8;
    assign in_chan_dep_data_vec_8[219 : 165] = dep_chan_data_12_8;
    assign token_in_vec_8[3] = token_12_8;
    assign dep_chan_vld_8_0 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_0 = out_chan_dep_data_8;
    assign token_8_0 = token_out_vec_8[0];
    assign dep_chan_vld_8_12 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_12 = out_chan_dep_data_8;
    assign token_8_12 = token_out_vec_8[1];
    assign dep_chan_vld_8_2 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_2 = out_chan_dep_data_8;
    assign token_8_2 = token_out_vec_8[2];
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[3];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[3];

    // Process: process_udp_512_4_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 9, 3, 3) rocev2_top_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~process_udp_512_4_U0.rx_ip2udpFifo_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~process_udp_512_4_U0.rx_udp2shiftFifo_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~process_udp_512_4_U0.rx_udpMetaFifo_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_6_9;
    assign in_chan_dep_data_vec_9[54 : 0] = dep_chan_data_6_9;
    assign token_in_vec_9[0] = token_6_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[109 : 55] = dep_chan_data_10_9;
    assign token_in_vec_9[1] = token_10_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_11_9;
    assign in_chan_dep_data_vec_9[164 : 110] = dep_chan_data_11_9;
    assign token_in_vec_9[2] = token_11_9;
    assign dep_chan_vld_9_6 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_6 = out_chan_dep_data_9;
    assign token_9_6 = token_out_vec_9[0];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[1];
    assign dep_chan_vld_9_11 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_11 = out_chan_dep_data_9;
    assign token_9_11 = token_out_vec_9[2];

    // Process: udp_rshiftWordByOctet_net_axis_512_512_2_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 10, 2, 2) rocev2_top_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~udp_rshiftWordByOctet_net_axis_512_512_2_U0.rx_udp2shiftFifo_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~udp_rshiftWordByOctet_net_axis_512_512_2_U0.rx_udp2ibFifo_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[54 : 0] = dep_chan_data_9_10;
    assign token_in_vec_10[0] = token_9_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_17_10;
    assign in_chan_dep_data_vec_10[109 : 55] = dep_chan_data_17_10;
    assign token_in_vec_10[1] = token_17_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];
    assign dep_chan_vld_10_17 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_17 = out_chan_dep_data_10;
    assign token_10_17 = token_out_vec_10[1];

    // Process: merge_rx_meta_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 11, 3, 3) rocev2_top_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~merge_rx_meta_U0.rx_ip2udpMetaFifo_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~merge_rx_meta_U0.rx_udpMetaFifo_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0 | (~merge_rx_meta_U0.rx_ipUdpMetaFifo_blk_n);
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_5_11;
    assign in_chan_dep_data_vec_11[54 : 0] = dep_chan_data_5_11;
    assign token_in_vec_11[0] = token_5_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_9_11;
    assign in_chan_dep_data_vec_11[109 : 55] = dep_chan_data_9_11;
    assign token_in_vec_11[1] = token_9_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_22_11;
    assign in_chan_dep_data_vec_11[164 : 110] = dep_chan_data_22_11;
    assign token_in_vec_11[2] = token_22_11;
    assign dep_chan_vld_11_5 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_5 = out_chan_dep_data_11;
    assign token_11_5 = token_out_vec_11[0];
    assign dep_chan_vld_11_9 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_9 = out_chan_dep_data_11;
    assign token_11_9 = token_out_vec_11[1];
    assign dep_chan_vld_11_22 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_22 = out_chan_dep_data_11;
    assign token_11_22 = token_out_vec_11[2];

    // Process: split_tx_meta_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 12, 3, 3) rocev2_top_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~split_tx_meta_U0.tx_ipUdpMetaFifo_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~split_tx_meta_U0.tx_udp2ipMetaFifo_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~split_tx_meta_U0.tx_udpMetaFifo_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_8_12;
    assign in_chan_dep_data_vec_12[54 : 0] = dep_chan_data_8_12;
    assign token_in_vec_12[0] = token_8_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[109 : 55] = dep_chan_data_14_12;
    assign token_in_vec_12[1] = token_14_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_40_12;
    assign in_chan_dep_data_vec_12[164 : 110] = dep_chan_data_40_12;
    assign token_in_vec_12[2] = token_40_12;
    assign dep_chan_vld_12_40 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_40 = out_chan_dep_data_12;
    assign token_12_40 = token_out_vec_12[0];
    assign dep_chan_vld_12_8 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_8 = out_chan_dep_data_12;
    assign token_12_8 = token_out_vec_12[1];
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[2];

    // Process: udp_lshiftWordByOctet_512_1_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 13, 2, 2) rocev2_top_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~udp_lshiftWordByOctet_512_1_U0.tx_shift2udpFifo_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~udp_lshiftWordByOctet_512_1_U0.tx_ib2udpFifo_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[54 : 0] = dep_chan_data_14_13;
    assign token_in_vec_13[0] = token_14_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_39_13;
    assign in_chan_dep_data_vec_13[109 : 55] = dep_chan_data_39_13;
    assign token_in_vec_13[1] = token_39_13;
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[0];
    assign dep_chan_vld_13_39 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_39 = out_chan_dep_data_13;
    assign token_13_39 = token_out_vec_13[1];

    // Process: generate_udp_512_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 14, 3, 3) rocev2_top_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~generate_udp_512_U0.tx_udpMetaFifo_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~generate_udp_512_U0.tx_udp2ipFifo_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0 | (~generate_udp_512_U0.tx_shift2udpFifo_blk_n);
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0;
    assign proc_14_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_7_14;
    assign in_chan_dep_data_vec_14[54 : 0] = dep_chan_data_7_14;
    assign token_in_vec_14[0] = token_7_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[109 : 55] = dep_chan_data_12_14;
    assign token_in_vec_14[1] = token_12_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[164 : 110] = dep_chan_data_13_14;
    assign token_in_vec_14[2] = token_13_14;
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[0];
    assign dep_chan_vld_14_7 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_7 = out_chan_dep_data_14;
    assign token_14_7 = token_out_vec_14[1];
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[2];

    // Process: qp_interface_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 15, 6, 6) rocev2_top_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~qp_interface_0_U0.qpif2CQC_upd_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~qp_interface_0_U0.qpif2QPC_upd_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0 | (~qp_interface_0_U0.qpi2stateTable_upd_req_blk_n) | (~qp_interface_0_U0.stateTable2qpi_rsp_blk_n);
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    assign proc_15_data_FIFO_blk[3] = 1'b0 | (~qp_interface_0_U0.if2msnTable_init_blk_n);
    assign proc_15_data_PIPO_blk[3] = 1'b0;
    assign proc_15_start_FIFO_blk[3] = 1'b0;
    assign proc_15_TLF_FIFO_blk[3] = 1'b0;
    assign proc_15_input_sync_blk[3] = 1'b0;
    assign proc_15_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_15[3] = dl_detect_out ? proc_dep_vld_vec_15_reg[3] : (proc_15_data_FIFO_blk[3] | proc_15_data_PIPO_blk[3] | proc_15_start_FIFO_blk[3] | proc_15_TLF_FIFO_blk[3] | proc_15_input_sync_blk[3] | proc_15_output_sync_blk[3]);
    assign proc_15_data_FIFO_blk[4] = 1'b0 | (~qp_interface_0_U0.qpif2retransPointerInit_blk_n);
    assign proc_15_data_PIPO_blk[4] = 1'b0;
    assign proc_15_start_FIFO_blk[4] = 1'b0;
    assign proc_15_TLF_FIFO_blk[4] = 1'b0;
    assign proc_15_input_sync_blk[4] = 1'b0;
    assign proc_15_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_15[4] = dl_detect_out ? proc_dep_vld_vec_15_reg[4] : (proc_15_data_FIFO_blk[4] | proc_15_data_PIPO_blk[4] | proc_15_start_FIFO_blk[4] | proc_15_TLF_FIFO_blk[4] | proc_15_input_sync_blk[4] | proc_15_output_sync_blk[4]);
    assign proc_15_data_FIFO_blk[5] = 1'b0 | (~qp_interface_0_U0.qpif2wqePointerInit_blk_n);
    assign proc_15_data_PIPO_blk[5] = 1'b0;
    assign proc_15_start_FIFO_blk[5] = 1'b0;
    assign proc_15_TLF_FIFO_blk[5] = 1'b0;
    assign proc_15_input_sync_blk[5] = 1'b0;
    assign proc_15_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_15[5] = dl_detect_out ? proc_dep_vld_vec_15_reg[5] : (proc_15_data_FIFO_blk[5] | proc_15_data_PIPO_blk[5] | proc_15_start_FIFO_blk[5] | proc_15_TLF_FIFO_blk[5] | proc_15_input_sync_blk[5] | proc_15_output_sync_blk[5]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[54 : 0] = dep_chan_data_16_15;
    assign token_in_vec_15[0] = token_16_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_42_15;
    assign in_chan_dep_data_vec_15[109 : 55] = dep_chan_data_42_15;
    assign token_in_vec_15[1] = token_42_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_43_15;
    assign in_chan_dep_data_vec_15[164 : 110] = dep_chan_data_43_15;
    assign token_in_vec_15[2] = token_43_15;
    assign in_chan_dep_vld_vec_15[3] = dep_chan_vld_44_15;
    assign in_chan_dep_data_vec_15[219 : 165] = dep_chan_data_44_15;
    assign token_in_vec_15[3] = token_44_15;
    assign in_chan_dep_vld_vec_15[4] = dep_chan_vld_48_15;
    assign in_chan_dep_data_vec_15[274 : 220] = dep_chan_data_48_15;
    assign token_in_vec_15[4] = token_48_15;
    assign in_chan_dep_vld_vec_15[5] = dep_chan_vld_52_15;
    assign in_chan_dep_data_vec_15[329 : 275] = dep_chan_data_52_15;
    assign token_in_vec_15[5] = token_52_15;
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[0];
    assign dep_chan_vld_15_42 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_42 = out_chan_dep_data_15;
    assign token_15_42 = token_out_vec_15[1];
    assign dep_chan_vld_15_43 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_43 = out_chan_dep_data_15;
    assign token_15_43 = token_out_vec_15[2];
    assign dep_chan_vld_15_44 = out_chan_dep_vld_vec_15[3];
    assign dep_chan_data_15_44 = out_chan_dep_data_15;
    assign token_15_44 = token_out_vec_15[3];
    assign dep_chan_vld_15_48 = out_chan_dep_vld_vec_15[4];
    assign dep_chan_data_15_48 = out_chan_dep_data_15;
    assign token_15_48 = token_out_vec_15[4];
    assign dep_chan_vld_15_52 = out_chan_dep_vld_vec_15[5];
    assign dep_chan_data_15_52 = out_chan_dep_data_15;
    assign token_15_52 = token_out_vec_15[5];

    // Process: CQContext_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 16, 2, 2) rocev2_top_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~CQContext_table_0_U0.qpif2CQC_upd_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~CQContext_table_0_U0.cqe2CQC_req_blk_n) | (~CQContext_table_0_U0.CQC2cqe_rsp_blk_n) | (~CQContext_table_0_U0.cqe2CQC_upd_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0;
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[54 : 0] = dep_chan_data_15_16;
    assign token_in_vec_16[0] = token_15_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_54_16;
    assign in_chan_dep_data_vec_16[109 : 55] = dep_chan_data_54_16;
    assign token_in_vec_16[1] = token_54_16;
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[0];
    assign dep_chan_vld_16_54 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_54 = out_chan_dep_data_16;
    assign token_16_54 = token_out_vec_16[1];

    // Process: rx_process_ibh_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 17, 4, 4) rocev2_top_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~rx_process_ibh_512_0_U0.rx_udp2ibFifo_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0;
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~rx_process_ibh_512_0_U0.rx_ibh2shiftFifo_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0 | (~rx_process_ibh_512_0_U0.rx_ibh2fsm_MetaFifo_blk_n);
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0;
    assign proc_17_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    assign proc_17_data_FIFO_blk[3] = 1'b0 | (~rx_process_ibh_512_0_U0.rx_ibh2exh_MetaFifo_blk_n);
    assign proc_17_data_PIPO_blk[3] = 1'b0;
    assign proc_17_start_FIFO_blk[3] = 1'b0;
    assign proc_17_TLF_FIFO_blk[3] = 1'b0;
    assign proc_17_input_sync_blk[3] = 1'b0;
    assign proc_17_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_17[3] = dl_detect_out ? proc_dep_vld_vec_17_reg[3] : (proc_17_data_FIFO_blk[3] | proc_17_data_PIPO_blk[3] | proc_17_start_FIFO_blk[3] | proc_17_TLF_FIFO_blk[3] | proc_17_input_sync_blk[3] | proc_17_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_10_17;
    assign in_chan_dep_data_vec_17[54 : 0] = dep_chan_data_10_17;
    assign token_in_vec_17[0] = token_10_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[109 : 55] = dep_chan_data_18_17;
    assign token_in_vec_17[1] = token_18_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_19_17;
    assign in_chan_dep_data_vec_17[164 : 110] = dep_chan_data_19_17;
    assign token_in_vec_17[2] = token_19_17;
    assign in_chan_dep_vld_vec_17[3] = dep_chan_vld_20_17;
    assign in_chan_dep_data_vec_17[219 : 165] = dep_chan_data_20_17;
    assign token_in_vec_17[3] = token_20_17;
    assign dep_chan_vld_17_10 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_10 = out_chan_dep_data_17;
    assign token_17_10 = token_out_vec_17[0];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[1];
    assign dep_chan_vld_17_20 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_20 = out_chan_dep_data_17;
    assign token_17_20 = token_out_vec_17[2];
    assign dep_chan_vld_17_19 = out_chan_dep_vld_vec_17[3];
    assign dep_chan_data_17_19 = out_chan_dep_data_17;
    assign token_17_19 = token_out_vec_17[3];

    // Process: rshiftWordByOctet_net_axis_512_512_11_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 18, 2, 2) rocev2_top_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_11_0_U0.rx_ibh2shiftFifo_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_11_0_U0.rx_shift2exhFifo_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[54 : 0] = dep_chan_data_17_18;
    assign token_in_vec_18[0] = token_17_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[109 : 55] = dep_chan_data_19_18;
    assign token_in_vec_18[1] = token_19_18;
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];

    // Process: rx_process_exh_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 19, 5, 5) rocev2_top_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~rx_process_exh_512_0_U0.rx_ibh2exh_MetaFifo_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0;
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~rx_process_exh_512_0_U0.rx_shift2exhFifo_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0 | (~rx_process_exh_512_0_U0.rx_exh2dropFifo_blk_n);
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0;
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    assign proc_19_data_FIFO_blk[3] = 1'b0 | (~rx_process_exh_512_0_U0.rx_exhMetaFifo_blk_n);
    assign proc_19_data_PIPO_blk[3] = 1'b0;
    assign proc_19_start_FIFO_blk[3] = 1'b0;
    assign proc_19_TLF_FIFO_blk[3] = 1'b0;
    assign proc_19_input_sync_blk[3] = 1'b0;
    assign proc_19_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_19[3] = dl_detect_out ? proc_dep_vld_vec_19_reg[3] : (proc_19_data_FIFO_blk[3] | proc_19_data_PIPO_blk[3] | proc_19_start_FIFO_blk[3] | proc_19_TLF_FIFO_blk[3] | proc_19_input_sync_blk[3] | proc_19_output_sync_blk[3]);
    assign proc_19_data_FIFO_blk[4] = 1'b0 | (~rx_process_exh_512_0_U0.rx_exh2drop_MetaFifo_blk_n);
    assign proc_19_data_PIPO_blk[4] = 1'b0;
    assign proc_19_start_FIFO_blk[4] = 1'b0;
    assign proc_19_TLF_FIFO_blk[4] = 1'b0;
    assign proc_19_input_sync_blk[4] = 1'b0;
    assign proc_19_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_19[4] = dl_detect_out ? proc_dep_vld_vec_19_reg[4] : (proc_19_data_FIFO_blk[4] | proc_19_data_PIPO_blk[4] | proc_19_start_FIFO_blk[4] | proc_19_TLF_FIFO_blk[4] | proc_19_input_sync_blk[4] | proc_19_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_17_19;
    assign in_chan_dep_data_vec_19[54 : 0] = dep_chan_data_17_19;
    assign token_in_vec_19[0] = token_17_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[109 : 55] = dep_chan_data_18_19;
    assign token_in_vec_19[1] = token_18_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[164 : 110] = dep_chan_data_20_19;
    assign token_in_vec_19[2] = token_20_19;
    assign in_chan_dep_vld_vec_19[3] = dep_chan_vld_21_19;
    assign in_chan_dep_data_vec_19[219 : 165] = dep_chan_data_21_19;
    assign token_in_vec_19[3] = token_21_19;
    assign in_chan_dep_vld_vec_19[4] = dep_chan_vld_22_19;
    assign in_chan_dep_data_vec_19[274 : 220] = dep_chan_data_22_19;
    assign token_in_vec_19[4] = token_22_19;
    assign dep_chan_vld_19_17 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_17 = out_chan_dep_data_19;
    assign token_19_17 = token_out_vec_19[0];
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[1];
    assign dep_chan_vld_19_21 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_21 = out_chan_dep_data_19;
    assign token_19_21 = token_out_vec_19[2];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[3];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[3];
    assign dep_chan_vld_19_22 = out_chan_dep_vld_vec_19[4];
    assign dep_chan_data_19_22 = out_chan_dep_data_19;
    assign token_19_22 = token_out_vec_19[4];

    // Process: rx_ibh_fsm_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 20, 9, 9) rocev2_top_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_ibh2fsm_MetaFifo_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_exhMetaFifo_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0 | (~rx_ibh_fsm_0_U0.rxIbh2stateTable_upd_req_blk_n) | (~rx_ibh_fsm_0_U0.stateTable2rxIbh_rsp_blk_n);
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_ibhDropFifo_blk_n);
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0;
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    assign proc_20_data_FIFO_blk[4] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_ibhDropMetaFifo_blk_n);
    assign proc_20_data_PIPO_blk[4] = 1'b0;
    assign proc_20_start_FIFO_blk[4] = 1'b0;
    assign proc_20_TLF_FIFO_blk[4] = 1'b0;
    assign proc_20_input_sync_blk[4] = 1'b0;
    assign proc_20_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_20[4] = dl_detect_out ? proc_dep_vld_vec_20_reg[4] : (proc_20_data_FIFO_blk[4] | proc_20_data_PIPO_blk[4] | proc_20_start_FIFO_blk[4] | proc_20_TLF_FIFO_blk[4] | proc_20_input_sync_blk[4] | proc_20_output_sync_blk[4]);
    assign proc_20_data_FIFO_blk[5] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_fsm2exh_MetaFifo_blk_n);
    assign proc_20_data_PIPO_blk[5] = 1'b0;
    assign proc_20_start_FIFO_blk[5] = 1'b0;
    assign proc_20_TLF_FIFO_blk[5] = 1'b0;
    assign proc_20_input_sync_blk[5] = 1'b0;
    assign proc_20_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_20[5] = dl_detect_out ? proc_dep_vld_vec_20_reg[5] : (proc_20_data_FIFO_blk[5] | proc_20_data_PIPO_blk[5] | proc_20_start_FIFO_blk[5] | proc_20_TLF_FIFO_blk[5] | proc_20_input_sync_blk[5] | proc_20_output_sync_blk[5]);
    assign proc_20_data_FIFO_blk[6] = 1'b0 | (~rx_ibh_fsm_0_U0.rx2retrans_upd_blk_n);
    assign proc_20_data_PIPO_blk[6] = 1'b0;
    assign proc_20_start_FIFO_blk[6] = 1'b0;
    assign proc_20_TLF_FIFO_blk[6] = 1'b0;
    assign proc_20_input_sync_blk[6] = 1'b0;
    assign proc_20_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_20[6] = dl_detect_out ? proc_dep_vld_vec_20_reg[6] : (proc_20_data_FIFO_blk[6] | proc_20_data_PIPO_blk[6] | proc_20_start_FIFO_blk[6] | proc_20_TLF_FIFO_blk[6] | proc_20_input_sync_blk[6] | proc_20_output_sync_blk[6]);
    assign proc_20_data_FIFO_blk[7] = 1'b0 | (~rx_ibh_fsm_0_U0.rxClearTimer_req_blk_n);
    assign proc_20_data_PIPO_blk[7] = 1'b0;
    assign proc_20_start_FIFO_blk[7] = 1'b0;
    assign proc_20_TLF_FIFO_blk[7] = 1'b0;
    assign proc_20_input_sync_blk[7] = 1'b0;
    assign proc_20_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_20[7] = dl_detect_out ? proc_dep_vld_vec_20_reg[7] : (proc_20_data_FIFO_blk[7] | proc_20_data_PIPO_blk[7] | proc_20_start_FIFO_blk[7] | proc_20_TLF_FIFO_blk[7] | proc_20_input_sync_blk[7] | proc_20_output_sync_blk[7]);
    assign proc_20_data_FIFO_blk[8] = 1'b0 | (~rx_ibh_fsm_0_U0.rx_ibhEventFifo_blk_n);
    assign proc_20_data_PIPO_blk[8] = 1'b0;
    assign proc_20_start_FIFO_blk[8] = 1'b0;
    assign proc_20_TLF_FIFO_blk[8] = 1'b0;
    assign proc_20_input_sync_blk[8] = 1'b0;
    assign proc_20_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_20[8] = dl_detect_out ? proc_dep_vld_vec_20_reg[8] : (proc_20_data_FIFO_blk[8] | proc_20_data_PIPO_blk[8] | proc_20_start_FIFO_blk[8] | proc_20_TLF_FIFO_blk[8] | proc_20_input_sync_blk[8] | proc_20_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_17_20;
    assign in_chan_dep_data_vec_20[54 : 0] = dep_chan_data_17_20;
    assign token_in_vec_20[0] = token_17_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[109 : 55] = dep_chan_data_19_20;
    assign token_in_vec_20[1] = token_19_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[164 : 110] = dep_chan_data_21_20;
    assign token_in_vec_20[2] = token_21_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_22_20;
    assign in_chan_dep_data_vec_20[219 : 165] = dep_chan_data_22_20;
    assign token_in_vec_20[3] = token_22_20;
    assign in_chan_dep_vld_vec_20[4] = dep_chan_vld_23_20;
    assign in_chan_dep_data_vec_20[274 : 220] = dep_chan_data_23_20;
    assign token_in_vec_20[4] = token_23_20;
    assign in_chan_dep_vld_vec_20[5] = dep_chan_vld_26_20;
    assign in_chan_dep_data_vec_20[329 : 275] = dep_chan_data_26_20;
    assign token_in_vec_20[5] = token_26_20;
    assign in_chan_dep_vld_vec_20[6] = dep_chan_vld_43_20;
    assign in_chan_dep_data_vec_20[384 : 330] = dep_chan_data_43_20;
    assign token_in_vec_20[6] = token_43_20;
    assign in_chan_dep_vld_vec_20[7] = dep_chan_vld_46_20;
    assign in_chan_dep_data_vec_20[439 : 385] = dep_chan_data_46_20;
    assign token_in_vec_20[7] = token_46_20;
    assign in_chan_dep_vld_vec_20[8] = dep_chan_vld_50_20;
    assign in_chan_dep_data_vec_20[494 : 440] = dep_chan_data_50_20;
    assign token_in_vec_20[8] = token_50_20;
    assign dep_chan_vld_20_17 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_17 = out_chan_dep_data_20;
    assign token_20_17 = token_out_vec_20[0];
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[1];
    assign dep_chan_vld_20_43 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_43 = out_chan_dep_data_20;
    assign token_20_43 = token_out_vec_20[2];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[3];
    assign dep_chan_vld_20_22 = out_chan_dep_vld_vec_20[4];
    assign dep_chan_data_20_22 = out_chan_dep_data_20;
    assign token_20_22 = token_out_vec_20[4];
    assign dep_chan_vld_20_23 = out_chan_dep_vld_vec_20[5];
    assign dep_chan_data_20_23 = out_chan_dep_data_20;
    assign token_20_23 = token_out_vec_20[5];
    assign dep_chan_vld_20_50 = out_chan_dep_vld_vec_20[6];
    assign dep_chan_data_20_50 = out_chan_dep_data_20;
    assign token_20_50 = token_out_vec_20[6];
    assign dep_chan_vld_20_46 = out_chan_dep_vld_vec_20[7];
    assign dep_chan_data_20_46 = out_chan_dep_data_20;
    assign token_20_46 = token_out_vec_20[7];
    assign dep_chan_vld_20_26 = out_chan_dep_vld_vec_20[8];
    assign dep_chan_data_20_26 = out_chan_dep_data_20;
    assign token_20_26 = token_out_vec_20[8];

    // Process: drop_ooo_ibh_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 21, 3, 3) rocev2_top_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~drop_ooo_ibh_512_0_U0.rx_ibhDropFifo_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0 | (~drop_ooo_ibh_512_0_U0.rx_exh2dropFifo_blk_n);
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0 | (~drop_ooo_ibh_512_0_U0.rx_ibhDrop2exhFifo_blk_n);
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0;
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0;
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_19_21;
    assign in_chan_dep_data_vec_21[54 : 0] = dep_chan_data_19_21;
    assign token_in_vec_21[0] = token_19_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[109 : 55] = dep_chan_data_20_21;
    assign token_in_vec_21[1] = token_20_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_24_21;
    assign in_chan_dep_data_vec_21[164 : 110] = dep_chan_data_24_21;
    assign token_in_vec_21[2] = token_24_21;
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[0];
    assign dep_chan_vld_21_19 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_19 = out_chan_dep_data_21;
    assign token_21_19 = token_out_vec_21[1];
    assign dep_chan_vld_21_24 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_24 = out_chan_dep_data_21;
    assign token_21_24 = token_out_vec_21[2];

    // Process: ipUdpMetaHandler_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 22, 4, 4) rocev2_top_hls_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0 | (~ipUdpMetaHandler_512_0_U0.rx_ipUdpMetaFifo_blk_n);
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0;
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0 | (~ipUdpMetaHandler_512_0_U0.rx_exh2drop_MetaFifo_blk_n);
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0;
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0 | (~ipUdpMetaHandler_512_0_U0.rx_ibhDropMetaFifo_blk_n);
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0;
    assign proc_22_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    assign proc_22_data_FIFO_blk[3] = 1'b0 | (~ipUdpMetaHandler_512_0_U0.exh_lengthFifo_blk_n) | (~ipUdpMetaHandler_512_0_U0.rx_drop2exhFsm_MetaFifo_blk_n);
    assign proc_22_data_PIPO_blk[3] = 1'b0;
    assign proc_22_start_FIFO_blk[3] = 1'b0;
    assign proc_22_TLF_FIFO_blk[3] = 1'b0;
    assign proc_22_input_sync_blk[3] = 1'b0;
    assign proc_22_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_22[3] = dl_detect_out ? proc_dep_vld_vec_22_reg[3] : (proc_22_data_FIFO_blk[3] | proc_22_data_PIPO_blk[3] | proc_22_start_FIFO_blk[3] | proc_22_TLF_FIFO_blk[3] | proc_22_input_sync_blk[3] | proc_22_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_11_22;
    assign in_chan_dep_data_vec_22[54 : 0] = dep_chan_data_11_22;
    assign token_in_vec_22[0] = token_11_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_19_22;
    assign in_chan_dep_data_vec_22[109 : 55] = dep_chan_data_19_22;
    assign token_in_vec_22[1] = token_19_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_20_22;
    assign in_chan_dep_data_vec_22[164 : 110] = dep_chan_data_20_22;
    assign token_in_vec_22[2] = token_20_22;
    assign in_chan_dep_vld_vec_22[3] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[219 : 165] = dep_chan_data_23_22;
    assign token_in_vec_22[3] = token_23_22;
    assign dep_chan_vld_22_11 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_11 = out_chan_dep_data_22;
    assign token_22_11 = token_out_vec_22[0];
    assign dep_chan_vld_22_19 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_19 = out_chan_dep_data_22;
    assign token_22_19 = token_out_vec_22[1];
    assign dep_chan_vld_22_20 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_20 = out_chan_dep_data_22;
    assign token_22_20 = token_out_vec_22[2];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[3];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[3];

    // Process: rx_exh_fsm_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 23, 8, 8) rocev2_top_hls_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_fsm2exh_MetaFifo_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_drop2exhFsm_MetaFifo_blk_n) | (~rx_exh_fsm_512_0_U0.exh_lengthFifo_blk_n);
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0;
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0 | (~rx_exh_fsm_512_0_U0.rxExh2msnTable_upd_req_blk_n) | (~rx_exh_fsm_512_0_U0.msnTable2rxExh_rsp_blk_n);
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0;
    assign proc_23_TLF_FIFO_blk[2] = 1'b0;
    assign proc_23_input_sync_blk[2] = 1'b0;
    assign proc_23_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    assign proc_23_data_FIFO_blk[3] = 1'b0 | (~rx_exh_fsm_512_0_U0.retrans2rx_init_blk_n) | (~rx_exh_fsm_512_0_U0.rx2retrans_req_blk_n);
    assign proc_23_data_PIPO_blk[3] = 1'b0;
    assign proc_23_start_FIFO_blk[3] = 1'b0;
    assign proc_23_TLF_FIFO_blk[3] = 1'b0;
    assign proc_23_input_sync_blk[3] = 1'b0;
    assign proc_23_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_23[3] = dl_detect_out ? proc_dep_vld_vec_23_reg[3] : (proc_23_data_FIFO_blk[3] | proc_23_data_PIPO_blk[3] | proc_23_start_FIFO_blk[3] | proc_23_TLF_FIFO_blk[3] | proc_23_input_sync_blk[3] | proc_23_output_sync_blk[3]);
    assign proc_23_data_FIFO_blk[4] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_exhEventMetaFifo_blk_n);
    assign proc_23_data_PIPO_blk[4] = 1'b0;
    assign proc_23_start_FIFO_blk[4] = 1'b0;
    assign proc_23_TLF_FIFO_blk[4] = 1'b0;
    assign proc_23_input_sync_blk[4] = 1'b0;
    assign proc_23_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_23[4] = dl_detect_out ? proc_dep_vld_vec_23_reg[4] : (proc_23_data_FIFO_blk[4] | proc_23_data_PIPO_blk[4] | proc_23_start_FIFO_blk[4] | proc_23_TLF_FIFO_blk[4] | proc_23_input_sync_blk[4] | proc_23_output_sync_blk[4]);
    assign proc_23_data_FIFO_blk[5] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_pkgSplitTypeFifo_blk_n);
    assign proc_23_data_PIPO_blk[5] = 1'b0;
    assign proc_23_start_FIFO_blk[5] = 1'b0;
    assign proc_23_TLF_FIFO_blk[5] = 1'b0;
    assign proc_23_input_sync_blk[5] = 1'b0;
    assign proc_23_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_23[5] = dl_detect_out ? proc_dep_vld_vec_23_reg[5] : (proc_23_data_FIFO_blk[5] | proc_23_data_PIPO_blk[5] | proc_23_start_FIFO_blk[5] | proc_23_TLF_FIFO_blk[5] | proc_23_input_sync_blk[5] | proc_23_output_sync_blk[5]);
    assign proc_23_data_FIFO_blk[6] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_pkgShiftTypeFifo_blk_n);
    assign proc_23_data_PIPO_blk[6] = 1'b0;
    assign proc_23_start_FIFO_blk[6] = 1'b0;
    assign proc_23_TLF_FIFO_blk[6] = 1'b0;
    assign proc_23_input_sync_blk[6] = 1'b0;
    assign proc_23_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_23[6] = dl_detect_out ? proc_dep_vld_vec_23_reg[6] : (proc_23_data_FIFO_blk[6] | proc_23_data_PIPO_blk[6] | proc_23_start_FIFO_blk[6] | proc_23_TLF_FIFO_blk[6] | proc_23_input_sync_blk[6] | proc_23_output_sync_blk[6]);
    assign proc_23_data_FIFO_blk[7] = 1'b0 | (~rx_exh_fsm_512_0_U0.rx_readRequestFifo_blk_n);
    assign proc_23_data_PIPO_blk[7] = 1'b0;
    assign proc_23_start_FIFO_blk[7] = 1'b0;
    assign proc_23_TLF_FIFO_blk[7] = 1'b0;
    assign proc_23_input_sync_blk[7] = 1'b0;
    assign proc_23_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_23[7] = dl_detect_out ? proc_dep_vld_vec_23_reg[7] : (proc_23_data_FIFO_blk[7] | proc_23_data_PIPO_blk[7] | proc_23_start_FIFO_blk[7] | proc_23_TLF_FIFO_blk[7] | proc_23_input_sync_blk[7] | proc_23_output_sync_blk[7]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_20_23;
    assign in_chan_dep_data_vec_23[54 : 0] = dep_chan_data_20_23;
    assign token_in_vec_23[0] = token_20_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[109 : 55] = dep_chan_data_22_23;
    assign token_in_vec_23[1] = token_22_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[164 : 110] = dep_chan_data_24_23;
    assign token_in_vec_23[2] = token_24_23;
    assign in_chan_dep_vld_vec_23[3] = dep_chan_vld_25_23;
    assign in_chan_dep_data_vec_23[219 : 165] = dep_chan_data_25_23;
    assign token_in_vec_23[3] = token_25_23;
    assign in_chan_dep_vld_vec_23[4] = dep_chan_vld_26_23;
    assign in_chan_dep_data_vec_23[274 : 220] = dep_chan_data_26_23;
    assign token_in_vec_23[4] = token_26_23;
    assign in_chan_dep_vld_vec_23[5] = dep_chan_vld_29_23;
    assign in_chan_dep_data_vec_23[329 : 275] = dep_chan_data_29_23;
    assign token_in_vec_23[5] = token_29_23;
    assign in_chan_dep_vld_vec_23[6] = dep_chan_vld_44_23;
    assign in_chan_dep_data_vec_23[384 : 330] = dep_chan_data_44_23;
    assign token_in_vec_23[6] = token_44_23;
    assign in_chan_dep_vld_vec_23[7] = dep_chan_vld_50_23;
    assign in_chan_dep_data_vec_23[439 : 385] = dep_chan_data_50_23;
    assign token_in_vec_23[7] = token_50_23;
    assign dep_chan_vld_23_20 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_20 = out_chan_dep_data_23;
    assign token_23_20 = token_out_vec_23[0];
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[1];
    assign dep_chan_vld_23_44 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_44 = out_chan_dep_data_23;
    assign token_23_44 = token_out_vec_23[2];
    assign dep_chan_vld_23_50 = out_chan_dep_vld_vec_23[3];
    assign dep_chan_data_23_50 = out_chan_dep_data_23;
    assign token_23_50 = token_out_vec_23[3];
    assign dep_chan_vld_23_26 = out_chan_dep_vld_vec_23[4];
    assign dep_chan_data_23_26 = out_chan_dep_data_23;
    assign token_23_26 = token_out_vec_23[4];
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[5];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[5];
    assign dep_chan_vld_23_29 = out_chan_dep_vld_vec_23[6];
    assign dep_chan_data_23_29 = out_chan_dep_data_23;
    assign token_23_29 = token_out_vec_23[6];
    assign dep_chan_vld_23_25 = out_chan_dep_vld_vec_23[7];
    assign dep_chan_data_23_25 = out_chan_dep_data_23;
    assign token_23_25 = token_out_vec_23[7];

    // Process: rx_exh_payload_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 24, 5, 5) rocev2_top_hls_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~rx_exh_payload_512_0_U0.rx_pkgSplitTypeFifo_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~rx_exh_payload_512_0_U0.rx_ibhDrop2exhFifo_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0 | (~rx_exh_payload_512_0_U0.rx_exh2rethShiftFifo_blk_n);
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0;
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0;
    assign proc_24_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    assign proc_24_data_FIFO_blk[3] = 1'b0 | (~rx_exh_payload_512_0_U0.rx_exh2aethShiftFifo_blk_n);
    assign proc_24_data_PIPO_blk[3] = 1'b0;
    assign proc_24_start_FIFO_blk[3] = 1'b0;
    assign proc_24_TLF_FIFO_blk[3] = 1'b0;
    assign proc_24_input_sync_blk[3] = 1'b0;
    assign proc_24_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_24[3] = dl_detect_out ? proc_dep_vld_vec_24_reg[3] : (proc_24_data_FIFO_blk[3] | proc_24_data_PIPO_blk[3] | proc_24_start_FIFO_blk[3] | proc_24_TLF_FIFO_blk[3] | proc_24_input_sync_blk[3] | proc_24_output_sync_blk[3]);
    assign proc_24_data_FIFO_blk[4] = 1'b0 | (~rx_exh_payload_512_0_U0.rx_exhNoShiftFifo_blk_n);
    assign proc_24_data_PIPO_blk[4] = 1'b0;
    assign proc_24_start_FIFO_blk[4] = 1'b0;
    assign proc_24_TLF_FIFO_blk[4] = 1'b0;
    assign proc_24_input_sync_blk[4] = 1'b0;
    assign proc_24_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_24[4] = dl_detect_out ? proc_dep_vld_vec_24_reg[4] : (proc_24_data_FIFO_blk[4] | proc_24_data_PIPO_blk[4] | proc_24_start_FIFO_blk[4] | proc_24_TLF_FIFO_blk[4] | proc_24_input_sync_blk[4] | proc_24_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_21_24;
    assign in_chan_dep_data_vec_24[54 : 0] = dep_chan_data_21_24;
    assign token_in_vec_24[0] = token_21_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[109 : 55] = dep_chan_data_23_24;
    assign token_in_vec_24[1] = token_23_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_27_24;
    assign in_chan_dep_data_vec_24[164 : 110] = dep_chan_data_27_24;
    assign token_in_vec_24[2] = token_27_24;
    assign in_chan_dep_vld_vec_24[3] = dep_chan_vld_28_24;
    assign in_chan_dep_data_vec_24[219 : 165] = dep_chan_data_28_24;
    assign token_in_vec_24[3] = token_28_24;
    assign in_chan_dep_vld_vec_24[4] = dep_chan_vld_29_24;
    assign in_chan_dep_data_vec_24[274 : 220] = dep_chan_data_29_24;
    assign token_in_vec_24[4] = token_29_24;
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[0];
    assign dep_chan_vld_24_21 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_21 = out_chan_dep_data_24;
    assign token_24_21 = token_out_vec_24[1];
    assign dep_chan_vld_24_27 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_27 = out_chan_dep_data_24;
    assign token_24_27 = token_out_vec_24[2];
    assign dep_chan_vld_24_28 = out_chan_dep_vld_vec_24[3];
    assign dep_chan_data_24_28 = out_chan_dep_data_24;
    assign token_24_28 = token_out_vec_24[3];
    assign dep_chan_vld_24_29 = out_chan_dep_vld_vec_24[4];
    assign dep_chan_data_24_29 = out_chan_dep_data_24;
    assign token_24_29 = token_out_vec_24[4];

    // Process: handle_read_requests_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 25, 3, 3) rocev2_top_hls_deadlock_detect_unit_25 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0 | (~handle_read_requests_0_U0.rx_readRequestFifo_blk_n);
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0;
    assign proc_25_TLF_FIFO_blk[0] = 1'b0;
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0 | (~handle_read_requests_0_U0.rx_remoteMemCmd_blk_n);
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0;
    assign proc_25_TLF_FIFO_blk[1] = 1'b0;
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    assign proc_25_data_FIFO_blk[2] = 1'b0 | (~handle_read_requests_0_U0.rx_readEvenFifo_blk_n);
    assign proc_25_data_PIPO_blk[2] = 1'b0;
    assign proc_25_start_FIFO_blk[2] = 1'b0;
    assign proc_25_TLF_FIFO_blk[2] = 1'b0;
    assign proc_25_input_sync_blk[2] = 1'b0;
    assign proc_25_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_25[2] = dl_detect_out ? proc_dep_vld_vec_25_reg[2] : (proc_25_data_FIFO_blk[2] | proc_25_data_PIPO_blk[2] | proc_25_start_FIFO_blk[2] | proc_25_TLF_FIFO_blk[2] | proc_25_input_sync_blk[2] | proc_25_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_23_25;
    assign in_chan_dep_data_vec_25[54 : 0] = dep_chan_data_23_25;
    assign token_in_vec_25[0] = token_23_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_32_25;
    assign in_chan_dep_data_vec_25[109 : 55] = dep_chan_data_32_25;
    assign token_in_vec_25[1] = token_32_25;
    assign in_chan_dep_vld_vec_25[2] = dep_chan_vld_41_25;
    assign in_chan_dep_data_vec_25[164 : 110] = dep_chan_data_41_25;
    assign token_in_vec_25[2] = token_41_25;
    assign dep_chan_vld_25_23 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_23 = out_chan_dep_data_25;
    assign token_25_23 = token_out_vec_25[0];
    assign dep_chan_vld_25_41 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_41 = out_chan_dep_data_25;
    assign token_25_41 = token_out_vec_25[1];
    assign dep_chan_vld_25_32 = out_chan_dep_vld_vec_25[2];
    assign dep_chan_data_25_32 = out_chan_dep_data_25;
    assign token_25_32 = token_out_vec_25[2];

    // Process: stream_merger_ackEvent_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 26, 3, 3) rocev2_top_hls_deadlock_detect_unit_26 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0 | (~stream_merger_ackEvent_U0.rx_exhEventMetaFifo_blk_n);
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0;
    assign proc_26_TLF_FIFO_blk[0] = 1'b0;
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    assign proc_26_data_FIFO_blk[1] = 1'b0 | (~stream_merger_ackEvent_U0.rx_ackEventFifo_blk_n);
    assign proc_26_data_PIPO_blk[1] = 1'b0;
    assign proc_26_start_FIFO_blk[1] = 1'b0;
    assign proc_26_TLF_FIFO_blk[1] = 1'b0;
    assign proc_26_input_sync_blk[1] = 1'b0;
    assign proc_26_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (proc_26_data_FIFO_blk[1] | proc_26_data_PIPO_blk[1] | proc_26_start_FIFO_blk[1] | proc_26_TLF_FIFO_blk[1] | proc_26_input_sync_blk[1] | proc_26_output_sync_blk[1]);
    assign proc_26_data_FIFO_blk[2] = 1'b0 | (~stream_merger_ackEvent_U0.rx_ibhEventFifo_blk_n);
    assign proc_26_data_PIPO_blk[2] = 1'b0;
    assign proc_26_start_FIFO_blk[2] = 1'b0;
    assign proc_26_TLF_FIFO_blk[2] = 1'b0;
    assign proc_26_input_sync_blk[2] = 1'b0;
    assign proc_26_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_26[2] = dl_detect_out ? proc_dep_vld_vec_26_reg[2] : (proc_26_data_FIFO_blk[2] | proc_26_data_PIPO_blk[2] | proc_26_start_FIFO_blk[2] | proc_26_TLF_FIFO_blk[2] | proc_26_input_sync_blk[2] | proc_26_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_20_26;
    assign in_chan_dep_data_vec_26[54 : 0] = dep_chan_data_20_26;
    assign token_in_vec_26[0] = token_20_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_23_26;
    assign in_chan_dep_data_vec_26[109 : 55] = dep_chan_data_23_26;
    assign token_in_vec_26[1] = token_23_26;
    assign in_chan_dep_vld_vec_26[2] = dep_chan_vld_32_26;
    assign in_chan_dep_data_vec_26[164 : 110] = dep_chan_data_32_26;
    assign token_in_vec_26[2] = token_32_26;
    assign dep_chan_vld_26_23 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_23 = out_chan_dep_data_26;
    assign token_26_23 = token_out_vec_26[0];
    assign dep_chan_vld_26_32 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_32 = out_chan_dep_data_26;
    assign token_26_32 = token_out_vec_26[1];
    assign dep_chan_vld_26_20 = out_chan_dep_vld_vec_26[2];
    assign dep_chan_data_26_20 = out_chan_dep_data_26;
    assign token_26_20 = token_out_vec_26[2];

    // Process: rshiftWordByOctet_net_axis_512_512_12_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 27, 2, 2) rocev2_top_hls_deadlock_detect_unit_27 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_12_0_U0.rx_exh2rethShiftFifo_blk_n);
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0;
    assign proc_27_TLF_FIFO_blk[0] = 1'b0;
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_12_0_U0.rx_rethSift2mergerFifo_blk_n);
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0;
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_24_27;
    assign in_chan_dep_data_vec_27[54 : 0] = dep_chan_data_24_27;
    assign token_in_vec_27[0] = token_24_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_29_27;
    assign in_chan_dep_data_vec_27[109 : 55] = dep_chan_data_29_27;
    assign token_in_vec_27[1] = token_29_27;
    assign dep_chan_vld_27_24 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_24 = out_chan_dep_data_27;
    assign token_27_24 = token_out_vec_27[0];
    assign dep_chan_vld_27_29 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_29 = out_chan_dep_data_27;
    assign token_27_29 = token_out_vec_27[1];

    // Process: rshiftWordByOctet_net_axis_512_512_13_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 28, 2, 2) rocev2_top_hls_deadlock_detect_unit_28 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_13_0_U0.rx_exh2aethShiftFifo_blk_n);
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0;
    assign proc_28_TLF_FIFO_blk[0] = 1'b0;
    assign proc_28_input_sync_blk[0] = 1'b0;
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0 | (~rshiftWordByOctet_net_axis_512_512_13_0_U0.rx_aethSift2mergerFifo_blk_n);
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0;
    assign proc_28_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_24_28;
    assign in_chan_dep_data_vec_28[54 : 0] = dep_chan_data_24_28;
    assign token_in_vec_28[0] = token_24_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[109 : 55] = dep_chan_data_29_28;
    assign token_in_vec_28[1] = token_29_28;
    assign dep_chan_vld_28_24 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_24 = out_chan_dep_data_28;
    assign token_28_24 = token_out_vec_28[0];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[1];

    // Process: merge_rx_pkgs_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 29, 5, 5) rocev2_top_hls_deadlock_detect_unit_29 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0 | (~merge_rx_pkgs_512_0_U0.rx_pkgShiftTypeFifo_blk_n);
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0;
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    assign proc_29_data_FIFO_blk[1] = 1'b0 | (~merge_rx_pkgs_512_0_U0.rx_aethSift2mergerFifo_blk_n);
    assign proc_29_data_PIPO_blk[1] = 1'b0;
    assign proc_29_start_FIFO_blk[1] = 1'b0;
    assign proc_29_TLF_FIFO_blk[1] = 1'b0;
    assign proc_29_input_sync_blk[1] = 1'b0;
    assign proc_29_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (proc_29_data_FIFO_blk[1] | proc_29_data_PIPO_blk[1] | proc_29_start_FIFO_blk[1] | proc_29_TLF_FIFO_blk[1] | proc_29_input_sync_blk[1] | proc_29_output_sync_blk[1]);
    assign proc_29_data_FIFO_blk[2] = 1'b0 | (~merge_rx_pkgs_512_0_U0.m_axis_mem_write_data_internal_blk_n);
    assign proc_29_data_PIPO_blk[2] = 1'b0;
    assign proc_29_start_FIFO_blk[2] = 1'b0;
    assign proc_29_TLF_FIFO_blk[2] = 1'b0;
    assign proc_29_input_sync_blk[2] = 1'b0;
    assign proc_29_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_29[2] = dl_detect_out ? proc_dep_vld_vec_29_reg[2] : (proc_29_data_FIFO_blk[2] | proc_29_data_PIPO_blk[2] | proc_29_start_FIFO_blk[2] | proc_29_TLF_FIFO_blk[2] | proc_29_input_sync_blk[2] | proc_29_output_sync_blk[2]);
    assign proc_29_data_FIFO_blk[3] = 1'b0 | (~merge_rx_pkgs_512_0_U0.rx_rethSift2mergerFifo_blk_n);
    assign proc_29_data_PIPO_blk[3] = 1'b0;
    assign proc_29_start_FIFO_blk[3] = 1'b0;
    assign proc_29_TLF_FIFO_blk[3] = 1'b0;
    assign proc_29_input_sync_blk[3] = 1'b0;
    assign proc_29_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_29[3] = dl_detect_out ? proc_dep_vld_vec_29_reg[3] : (proc_29_data_FIFO_blk[3] | proc_29_data_PIPO_blk[3] | proc_29_start_FIFO_blk[3] | proc_29_TLF_FIFO_blk[3] | proc_29_input_sync_blk[3] | proc_29_output_sync_blk[3]);
    assign proc_29_data_FIFO_blk[4] = 1'b0 | (~merge_rx_pkgs_512_0_U0.rx_exhNoShiftFifo_blk_n);
    assign proc_29_data_PIPO_blk[4] = 1'b0;
    assign proc_29_start_FIFO_blk[4] = 1'b0;
    assign proc_29_TLF_FIFO_blk[4] = 1'b0;
    assign proc_29_input_sync_blk[4] = 1'b0;
    assign proc_29_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_29[4] = dl_detect_out ? proc_dep_vld_vec_29_reg[4] : (proc_29_data_FIFO_blk[4] | proc_29_data_PIPO_blk[4] | proc_29_start_FIFO_blk[4] | proc_29_TLF_FIFO_blk[4] | proc_29_input_sync_blk[4] | proc_29_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_4_29;
    assign in_chan_dep_data_vec_29[54 : 0] = dep_chan_data_4_29;
    assign token_in_vec_29[0] = token_4_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_23_29;
    assign in_chan_dep_data_vec_29[109 : 55] = dep_chan_data_23_29;
    assign token_in_vec_29[1] = token_23_29;
    assign in_chan_dep_vld_vec_29[2] = dep_chan_vld_24_29;
    assign in_chan_dep_data_vec_29[164 : 110] = dep_chan_data_24_29;
    assign token_in_vec_29[2] = token_24_29;
    assign in_chan_dep_vld_vec_29[3] = dep_chan_vld_27_29;
    assign in_chan_dep_data_vec_29[219 : 165] = dep_chan_data_27_29;
    assign token_in_vec_29[3] = token_27_29;
    assign in_chan_dep_vld_vec_29[4] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[274 : 220] = dep_chan_data_28_29;
    assign token_in_vec_29[4] = token_28_29;
    assign dep_chan_vld_29_23 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_23 = out_chan_dep_data_29;
    assign token_29_23 = token_out_vec_29[0];
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[1];
    assign dep_chan_vld_29_4 = out_chan_dep_vld_vec_29[2];
    assign dep_chan_data_29_4 = out_chan_dep_data_29;
    assign token_29_4 = token_out_vec_29[2];
    assign dep_chan_vld_29_27 = out_chan_dep_vld_vec_29[3];
    assign dep_chan_data_29_27 = out_chan_dep_data_29;
    assign token_29_27 = token_out_vec_29[3];
    assign dep_chan_vld_29_24 = out_chan_dep_vld_vec_29[4];
    assign dep_chan_data_29_24 = out_chan_dep_data_29;
    assign token_29_24 = token_out_vec_29[4];

    // Process: local_req_handler_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 30, 5, 5) rocev2_top_hls_deadlock_detect_unit_30 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0 | (~local_req_handler_0_U0.retransmitter2exh_eventFifo_blk_n);
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0;
    assign proc_30_TLF_FIFO_blk[0] = 1'b0;
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0 | (~local_req_handler_0_U0.tx_appMetaFifo_blk_n);
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0;
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    assign proc_30_data_FIFO_blk[2] = 1'b0 | (~local_req_handler_0_U0.tx_localMemCmdFifo_blk_n);
    assign proc_30_data_PIPO_blk[2] = 1'b0;
    assign proc_30_start_FIFO_blk[2] = 1'b0;
    assign proc_30_TLF_FIFO_blk[2] = 1'b0;
    assign proc_30_input_sync_blk[2] = 1'b0;
    assign proc_30_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_30[2] = dl_detect_out ? proc_dep_vld_vec_30_reg[2] : (proc_30_data_FIFO_blk[2] | proc_30_data_PIPO_blk[2] | proc_30_start_FIFO_blk[2] | proc_30_TLF_FIFO_blk[2] | proc_30_input_sync_blk[2] | proc_30_output_sync_blk[2]);
    assign proc_30_data_FIFO_blk[3] = 1'b0 | (~local_req_handler_0_U0.tx2retrans_insertAddrLen_blk_n);
    assign proc_30_data_PIPO_blk[3] = 1'b0;
    assign proc_30_start_FIFO_blk[3] = 1'b0;
    assign proc_30_TLF_FIFO_blk[3] = 1'b0;
    assign proc_30_input_sync_blk[3] = 1'b0;
    assign proc_30_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_30[3] = dl_detect_out ? proc_dep_vld_vec_30_reg[3] : (proc_30_data_FIFO_blk[3] | proc_30_data_PIPO_blk[3] | proc_30_start_FIFO_blk[3] | proc_30_TLF_FIFO_blk[3] | proc_30_input_sync_blk[3] | proc_30_output_sync_blk[3]);
    assign proc_30_data_FIFO_blk[4] = 1'b0 | (~local_req_handler_0_U0.sqMeta2wqetable_blk_n);
    assign proc_30_data_PIPO_blk[4] = 1'b0;
    assign proc_30_start_FIFO_blk[4] = 1'b0;
    assign proc_30_TLF_FIFO_blk[4] = 1'b0;
    assign proc_30_input_sync_blk[4] = 1'b0;
    assign proc_30_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_30[4] = dl_detect_out ? proc_dep_vld_vec_30_reg[4] : (proc_30_data_FIFO_blk[4] | proc_30_data_PIPO_blk[4] | proc_30_start_FIFO_blk[4] | proc_30_TLF_FIFO_blk[4] | proc_30_input_sync_blk[4] | proc_30_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_32_30;
    assign in_chan_dep_data_vec_30[54 : 0] = dep_chan_data_32_30;
    assign token_in_vec_30[0] = token_32_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_41_30;
    assign in_chan_dep_data_vec_30[109 : 55] = dep_chan_data_41_30;
    assign token_in_vec_30[1] = token_41_30;
    assign in_chan_dep_vld_vec_30[2] = dep_chan_vld_45_30;
    assign in_chan_dep_data_vec_30[164 : 110] = dep_chan_data_45_30;
    assign token_in_vec_30[2] = token_45_30;
    assign in_chan_dep_vld_vec_30[3] = dep_chan_vld_50_30;
    assign in_chan_dep_data_vec_30[219 : 165] = dep_chan_data_50_30;
    assign token_in_vec_30[3] = token_50_30;
    assign in_chan_dep_vld_vec_30[4] = dep_chan_vld_54_30;
    assign in_chan_dep_data_vec_30[274 : 220] = dep_chan_data_54_30;
    assign token_in_vec_30[4] = token_54_30;
    assign dep_chan_vld_30_50 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_50 = out_chan_dep_data_30;
    assign token_30_50 = token_out_vec_30[0];
    assign dep_chan_vld_30_32 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_32 = out_chan_dep_data_30;
    assign token_30_32 = token_out_vec_30[1];
    assign dep_chan_vld_30_41 = out_chan_dep_vld_vec_30[2];
    assign dep_chan_data_30_41 = out_chan_dep_data_30;
    assign token_30_41 = token_out_vec_30[2];
    assign dep_chan_vld_30_45 = out_chan_dep_vld_vec_30[3];
    assign dep_chan_data_30_45 = out_chan_dep_data_30;
    assign token_30_45 = token_out_vec_30[3];
    assign dep_chan_vld_30_54 = out_chan_dep_vld_vec_30[4];
    assign dep_chan_data_30_54 = out_chan_dep_data_30;
    assign token_30_54 = token_out_vec_30[4];

    // Process: tx_pkg_arbiter_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 31, 5, 5) rocev2_top_hls_deadlock_detect_unit_31 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0 | (~tx_pkg_arbiter_512_0_U0.tx_pkgInfoFifo_blk_n);
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0;
    assign proc_31_TLF_FIFO_blk[0] = 1'b0;
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0 | (~tx_pkg_arbiter_512_0_U0.s_axis_mem_read_data_internal_blk_n);
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0;
    assign proc_31_TLF_FIFO_blk[1] = 1'b0;
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    assign proc_31_data_FIFO_blk[2] = 1'b0 | (~tx_pkg_arbiter_512_0_U0.tx_split2aethShift_blk_n);
    assign proc_31_data_PIPO_blk[2] = 1'b0;
    assign proc_31_start_FIFO_blk[2] = 1'b0;
    assign proc_31_TLF_FIFO_blk[2] = 1'b0;
    assign proc_31_input_sync_blk[2] = 1'b0;
    assign proc_31_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_31[2] = dl_detect_out ? proc_dep_vld_vec_31_reg[2] : (proc_31_data_FIFO_blk[2] | proc_31_data_PIPO_blk[2] | proc_31_start_FIFO_blk[2] | proc_31_TLF_FIFO_blk[2] | proc_31_input_sync_blk[2] | proc_31_output_sync_blk[2]);
    assign proc_31_data_FIFO_blk[3] = 1'b0 | (~tx_pkg_arbiter_512_0_U0.tx_rethMerge2rethShift_blk_n);
    assign proc_31_data_PIPO_blk[3] = 1'b0;
    assign proc_31_start_FIFO_blk[3] = 1'b0;
    assign proc_31_TLF_FIFO_blk[3] = 1'b0;
    assign proc_31_input_sync_blk[3] = 1'b0;
    assign proc_31_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_31[3] = dl_detect_out ? proc_dep_vld_vec_31_reg[3] : (proc_31_data_FIFO_blk[3] | proc_31_data_PIPO_blk[3] | proc_31_start_FIFO_blk[3] | proc_31_TLF_FIFO_blk[3] | proc_31_input_sync_blk[3] | proc_31_output_sync_blk[3]);
    assign proc_31_data_FIFO_blk[4] = 1'b0 | (~tx_pkg_arbiter_512_0_U0.tx_rawPayFifo_blk_n);
    assign proc_31_data_PIPO_blk[4] = 1'b0;
    assign proc_31_start_FIFO_blk[4] = 1'b0;
    assign proc_31_TLF_FIFO_blk[4] = 1'b0;
    assign proc_31_input_sync_blk[4] = 1'b0;
    assign proc_31_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_31[4] = dl_detect_out ? proc_dep_vld_vec_31_reg[4] : (proc_31_data_FIFO_blk[4] | proc_31_data_PIPO_blk[4] | proc_31_start_FIFO_blk[4] | proc_31_TLF_FIFO_blk[4] | proc_31_input_sync_blk[4] | proc_31_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_3_31;
    assign in_chan_dep_data_vec_31[54 : 0] = dep_chan_data_3_31;
    assign token_in_vec_31[0] = token_3_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_33_31;
    assign in_chan_dep_data_vec_31[109 : 55] = dep_chan_data_33_31;
    assign token_in_vec_31[1] = token_33_31;
    assign in_chan_dep_vld_vec_31[2] = dep_chan_vld_34_31;
    assign in_chan_dep_data_vec_31[164 : 110] = dep_chan_data_34_31;
    assign token_in_vec_31[2] = token_34_31;
    assign in_chan_dep_vld_vec_31[3] = dep_chan_vld_36_31;
    assign in_chan_dep_data_vec_31[219 : 165] = dep_chan_data_36_31;
    assign token_in_vec_31[3] = token_36_31;
    assign in_chan_dep_vld_vec_31[4] = dep_chan_vld_41_31;
    assign in_chan_dep_data_vec_31[274 : 220] = dep_chan_data_41_31;
    assign token_in_vec_31[4] = token_41_31;
    assign dep_chan_vld_31_41 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_41 = out_chan_dep_data_31;
    assign token_31_41 = token_out_vec_31[0];
    assign dep_chan_vld_31_3 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_3 = out_chan_dep_data_31;
    assign token_31_3 = token_out_vec_31[1];
    assign dep_chan_vld_31_33 = out_chan_dep_vld_vec_31[2];
    assign dep_chan_data_31_33 = out_chan_dep_data_31;
    assign token_31_33 = token_out_vec_31[2];
    assign dep_chan_vld_31_34 = out_chan_dep_vld_vec_31[3];
    assign dep_chan_data_31_34 = out_chan_dep_data_31;
    assign token_31_34 = token_out_vec_31[3];
    assign dep_chan_vld_31_36 = out_chan_dep_vld_vec_31[4];
    assign dep_chan_data_31_36 = out_chan_dep_data_31;
    assign token_31_36 = token_out_vec_31[4];

    // Process: meta_merger_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 32, 6, 6) rocev2_top_hls_deadlock_detect_unit_32 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0 | (~meta_merger_0_U0.rx_ackEventFifo_blk_n);
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0;
    assign proc_32_TLF_FIFO_blk[0] = 1'b0;
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    assign proc_32_data_FIFO_blk[1] = 1'b0 | (~meta_merger_0_U0.tx_ibhconnTable_req_blk_n);
    assign proc_32_data_PIPO_blk[1] = 1'b0;
    assign proc_32_start_FIFO_blk[1] = 1'b0;
    assign proc_32_TLF_FIFO_blk[1] = 1'b0;
    assign proc_32_input_sync_blk[1] = 1'b0;
    assign proc_32_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (proc_32_data_FIFO_blk[1] | proc_32_data_PIPO_blk[1] | proc_32_start_FIFO_blk[1] | proc_32_TLF_FIFO_blk[1] | proc_32_input_sync_blk[1] | proc_32_output_sync_blk[1]);
    assign proc_32_data_FIFO_blk[2] = 1'b0 | (~meta_merger_0_U0.tx_ibhMetaFifo_blk_n);
    assign proc_32_data_PIPO_blk[2] = 1'b0;
    assign proc_32_start_FIFO_blk[2] = 1'b0;
    assign proc_32_TLF_FIFO_blk[2] = 1'b0;
    assign proc_32_input_sync_blk[2] = 1'b0;
    assign proc_32_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_32[2] = dl_detect_out ? proc_dep_vld_vec_32_reg[2] : (proc_32_data_FIFO_blk[2] | proc_32_data_PIPO_blk[2] | proc_32_start_FIFO_blk[2] | proc_32_TLF_FIFO_blk[2] | proc_32_input_sync_blk[2] | proc_32_output_sync_blk[2]);
    assign proc_32_data_FIFO_blk[3] = 1'b0 | (~meta_merger_0_U0.tx_exhMetaFifo_blk_n);
    assign proc_32_data_PIPO_blk[3] = 1'b0;
    assign proc_32_start_FIFO_blk[3] = 1'b0;
    assign proc_32_TLF_FIFO_blk[3] = 1'b0;
    assign proc_32_input_sync_blk[3] = 1'b0;
    assign proc_32_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_32[3] = dl_detect_out ? proc_dep_vld_vec_32_reg[3] : (proc_32_data_FIFO_blk[3] | proc_32_data_PIPO_blk[3] | proc_32_start_FIFO_blk[3] | proc_32_TLF_FIFO_blk[3] | proc_32_input_sync_blk[3] | proc_32_output_sync_blk[3]);
    assign proc_32_data_FIFO_blk[4] = 1'b0 | (~meta_merger_0_U0.rx_readEvenFifo_blk_n);
    assign proc_32_data_PIPO_blk[4] = 1'b0;
    assign proc_32_start_FIFO_blk[4] = 1'b0;
    assign proc_32_TLF_FIFO_blk[4] = 1'b0;
    assign proc_32_input_sync_blk[4] = 1'b0;
    assign proc_32_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_32[4] = dl_detect_out ? proc_dep_vld_vec_32_reg[4] : (proc_32_data_FIFO_blk[4] | proc_32_data_PIPO_blk[4] | proc_32_start_FIFO_blk[4] | proc_32_TLF_FIFO_blk[4] | proc_32_input_sync_blk[4] | proc_32_output_sync_blk[4]);
    assign proc_32_data_FIFO_blk[5] = 1'b0 | (~meta_merger_0_U0.tx_appMetaFifo_blk_n);
    assign proc_32_data_PIPO_blk[5] = 1'b0;
    assign proc_32_start_FIFO_blk[5] = 1'b0;
    assign proc_32_TLF_FIFO_blk[5] = 1'b0;
    assign proc_32_input_sync_blk[5] = 1'b0;
    assign proc_32_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_32[5] = dl_detect_out ? proc_dep_vld_vec_32_reg[5] : (proc_32_data_FIFO_blk[5] | proc_32_data_PIPO_blk[5] | proc_32_start_FIFO_blk[5] | proc_32_TLF_FIFO_blk[5] | proc_32_input_sync_blk[5] | proc_32_output_sync_blk[5]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_25_32;
    assign in_chan_dep_data_vec_32[54 : 0] = dep_chan_data_25_32;
    assign token_in_vec_32[0] = token_25_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_26_32;
    assign in_chan_dep_data_vec_32[109 : 55] = dep_chan_data_26_32;
    assign token_in_vec_32[1] = token_26_32;
    assign in_chan_dep_vld_vec_32[2] = dep_chan_vld_30_32;
    assign in_chan_dep_data_vec_32[164 : 110] = dep_chan_data_30_32;
    assign token_in_vec_32[2] = token_30_32;
    assign in_chan_dep_vld_vec_32[3] = dep_chan_vld_35_32;
    assign in_chan_dep_data_vec_32[219 : 165] = dep_chan_data_35_32;
    assign token_in_vec_32[3] = token_35_32;
    assign in_chan_dep_vld_vec_32[4] = dep_chan_vld_38_32;
    assign in_chan_dep_data_vec_32[274 : 220] = dep_chan_data_38_32;
    assign token_in_vec_32[4] = token_38_32;
    assign in_chan_dep_vld_vec_32[5] = dep_chan_vld_42_32;
    assign in_chan_dep_data_vec_32[329 : 275] = dep_chan_data_42_32;
    assign token_in_vec_32[5] = token_42_32;
    assign dep_chan_vld_32_26 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_26 = out_chan_dep_data_32;
    assign token_32_26 = token_out_vec_32[0];
    assign dep_chan_vld_32_42 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_42 = out_chan_dep_data_32;
    assign token_32_42 = token_out_vec_32[1];
    assign dep_chan_vld_32_38 = out_chan_dep_vld_vec_32[2];
    assign dep_chan_data_32_38 = out_chan_dep_data_32;
    assign token_32_38 = token_out_vec_32[2];
    assign dep_chan_vld_32_35 = out_chan_dep_vld_vec_32[3];
    assign dep_chan_data_32_35 = out_chan_dep_data_32;
    assign token_32_35 = token_out_vec_32[3];
    assign dep_chan_vld_32_25 = out_chan_dep_vld_vec_32[4];
    assign dep_chan_data_32_25 = out_chan_dep_data_32;
    assign token_32_25 = token_out_vec_32[4];
    assign dep_chan_vld_32_30 = out_chan_dep_vld_vec_32[5];
    assign dep_chan_data_32_30 = out_chan_dep_data_32;
    assign token_32_30 = token_out_vec_32[5];

    // Process: lshiftWordByOctet_512_12_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 33, 2, 2) rocev2_top_hls_deadlock_detect_unit_33 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0 | (~lshiftWordByOctet_512_12_0_U0.tx_aethShift2payFifo_blk_n);
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0;
    assign proc_33_TLF_FIFO_blk[0] = 1'b0;
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    assign proc_33_data_FIFO_blk[1] = 1'b0 | (~lshiftWordByOctet_512_12_0_U0.tx_split2aethShift_blk_n);
    assign proc_33_data_PIPO_blk[1] = 1'b0;
    assign proc_33_start_FIFO_blk[1] = 1'b0;
    assign proc_33_TLF_FIFO_blk[1] = 1'b0;
    assign proc_33_input_sync_blk[1] = 1'b0;
    assign proc_33_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_33[1] = dl_detect_out ? proc_dep_vld_vec_33_reg[1] : (proc_33_data_FIFO_blk[1] | proc_33_data_PIPO_blk[1] | proc_33_start_FIFO_blk[1] | proc_33_TLF_FIFO_blk[1] | proc_33_input_sync_blk[1] | proc_33_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_31_33;
    assign in_chan_dep_data_vec_33[54 : 0] = dep_chan_data_31_33;
    assign token_in_vec_33[0] = token_31_33;
    assign in_chan_dep_vld_vec_33[1] = dep_chan_vld_36_33;
    assign in_chan_dep_data_vec_33[109 : 55] = dep_chan_data_36_33;
    assign token_in_vec_33[1] = token_36_33;
    assign dep_chan_vld_33_36 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_36 = out_chan_dep_data_33;
    assign token_33_36 = token_out_vec_33[0];
    assign dep_chan_vld_33_31 = out_chan_dep_vld_vec_33[1];
    assign dep_chan_data_33_31 = out_chan_dep_data_33;
    assign token_33_31 = token_out_vec_33[1];

    // Process: lshiftWordByOctet_512_13_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 34, 2, 2) rocev2_top_hls_deadlock_detect_unit_34 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_34),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_34),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_34),
        .token_in_vec(token_in_vec_34),
        .dl_detect_in(dl_detect_out),
        .origin(origin[34]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_34),
        .out_chan_dep_data(out_chan_dep_data_34),
        .token_out_vec(token_out_vec_34),
        .dl_detect_out(dl_in_vec[34]));

    assign proc_34_data_FIFO_blk[0] = 1'b0 | (~lshiftWordByOctet_512_13_0_U0.tx_rethShift2payFifo_blk_n);
    assign proc_34_data_PIPO_blk[0] = 1'b0;
    assign proc_34_start_FIFO_blk[0] = 1'b0;
    assign proc_34_TLF_FIFO_blk[0] = 1'b0;
    assign proc_34_input_sync_blk[0] = 1'b0;
    assign proc_34_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_34[0] = dl_detect_out ? proc_dep_vld_vec_34_reg[0] : (proc_34_data_FIFO_blk[0] | proc_34_data_PIPO_blk[0] | proc_34_start_FIFO_blk[0] | proc_34_TLF_FIFO_blk[0] | proc_34_input_sync_blk[0] | proc_34_output_sync_blk[0]);
    assign proc_34_data_FIFO_blk[1] = 1'b0 | (~lshiftWordByOctet_512_13_0_U0.tx_rethMerge2rethShift_blk_n);
    assign proc_34_data_PIPO_blk[1] = 1'b0;
    assign proc_34_start_FIFO_blk[1] = 1'b0;
    assign proc_34_TLF_FIFO_blk[1] = 1'b0;
    assign proc_34_input_sync_blk[1] = 1'b0;
    assign proc_34_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_34[1] = dl_detect_out ? proc_dep_vld_vec_34_reg[1] : (proc_34_data_FIFO_blk[1] | proc_34_data_PIPO_blk[1] | proc_34_start_FIFO_blk[1] | proc_34_TLF_FIFO_blk[1] | proc_34_input_sync_blk[1] | proc_34_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_34_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_34_reg <= proc_dep_vld_vec_34;
        end
    end
    assign in_chan_dep_vld_vec_34[0] = dep_chan_vld_31_34;
    assign in_chan_dep_data_vec_34[54 : 0] = dep_chan_data_31_34;
    assign token_in_vec_34[0] = token_31_34;
    assign in_chan_dep_vld_vec_34[1] = dep_chan_vld_36_34;
    assign in_chan_dep_data_vec_34[109 : 55] = dep_chan_data_36_34;
    assign token_in_vec_34[1] = token_36_34;
    assign dep_chan_vld_34_36 = out_chan_dep_vld_vec_34[0];
    assign dep_chan_data_34_36 = out_chan_dep_data_34;
    assign token_34_36 = token_out_vec_34[0];
    assign dep_chan_vld_34_31 = out_chan_dep_vld_vec_34[1];
    assign dep_chan_data_34_31 = out_chan_dep_data_34;
    assign token_34_31 = token_out_vec_34[1];

    // Process: generate_exh_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 35, 5, 5) rocev2_top_hls_deadlock_detect_unit_35 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_35),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_35),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_35),
        .token_in_vec(token_in_vec_35),
        .dl_detect_in(dl_detect_out),
        .origin(origin[35]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_35),
        .out_chan_dep_data(out_chan_dep_data_35),
        .token_out_vec(token_out_vec_35),
        .dl_detect_out(dl_in_vec[35]));

    assign proc_35_data_FIFO_blk[0] = 1'b0 | (~generate_exh_512_0_U0.tx_exhMetaFifo_blk_n);
    assign proc_35_data_PIPO_blk[0] = 1'b0;
    assign proc_35_start_FIFO_blk[0] = 1'b0;
    assign proc_35_TLF_FIFO_blk[0] = 1'b0;
    assign proc_35_input_sync_blk[0] = 1'b0;
    assign proc_35_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_35[0] = dl_detect_out ? proc_dep_vld_vec_35_reg[0] : (proc_35_data_FIFO_blk[0] | proc_35_data_PIPO_blk[0] | proc_35_start_FIFO_blk[0] | proc_35_TLF_FIFO_blk[0] | proc_35_input_sync_blk[0] | proc_35_output_sync_blk[0]);
    assign proc_35_data_FIFO_blk[1] = 1'b0 | (~generate_exh_512_0_U0.txExh2msnTable_req_blk_n) | (~generate_exh_512_0_U0.msnTable2txExh_rsp_blk_n);
    assign proc_35_data_PIPO_blk[1] = 1'b0;
    assign proc_35_start_FIFO_blk[1] = 1'b0;
    assign proc_35_TLF_FIFO_blk[1] = 1'b0;
    assign proc_35_input_sync_blk[1] = 1'b0;
    assign proc_35_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_35[1] = dl_detect_out ? proc_dep_vld_vec_35_reg[1] : (proc_35_data_FIFO_blk[1] | proc_35_data_PIPO_blk[1] | proc_35_start_FIFO_blk[1] | proc_35_TLF_FIFO_blk[1] | proc_35_input_sync_blk[1] | proc_35_output_sync_blk[1]);
    assign proc_35_data_FIFO_blk[2] = 1'b0 | (~generate_exh_512_0_U0.txSetTimer_req_blk_n);
    assign proc_35_data_PIPO_blk[2] = 1'b0;
    assign proc_35_start_FIFO_blk[2] = 1'b0;
    assign proc_35_TLF_FIFO_blk[2] = 1'b0;
    assign proc_35_input_sync_blk[2] = 1'b0;
    assign proc_35_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_35[2] = dl_detect_out ? proc_dep_vld_vec_35_reg[2] : (proc_35_data_FIFO_blk[2] | proc_35_data_PIPO_blk[2] | proc_35_start_FIFO_blk[2] | proc_35_TLF_FIFO_blk[2] | proc_35_input_sync_blk[2] | proc_35_output_sync_blk[2]);
    assign proc_35_data_FIFO_blk[3] = 1'b0 | (~generate_exh_512_0_U0.tx_exh2payFifo_blk_n) | (~generate_exh_512_0_U0.tx_packetInfoFifo_blk_n);
    assign proc_35_data_PIPO_blk[3] = 1'b0;
    assign proc_35_start_FIFO_blk[3] = 1'b0;
    assign proc_35_TLF_FIFO_blk[3] = 1'b0;
    assign proc_35_input_sync_blk[3] = 1'b0;
    assign proc_35_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_35[3] = dl_detect_out ? proc_dep_vld_vec_35_reg[3] : (proc_35_data_FIFO_blk[3] | proc_35_data_PIPO_blk[3] | proc_35_start_FIFO_blk[3] | proc_35_TLF_FIFO_blk[3] | proc_35_input_sync_blk[3] | proc_35_output_sync_blk[3]);
    assign proc_35_data_FIFO_blk[4] = 1'b0 | (~generate_exh_512_0_U0.tx_lengthFifo_blk_n);
    assign proc_35_data_PIPO_blk[4] = 1'b0;
    assign proc_35_start_FIFO_blk[4] = 1'b0;
    assign proc_35_TLF_FIFO_blk[4] = 1'b0;
    assign proc_35_input_sync_blk[4] = 1'b0;
    assign proc_35_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_35[4] = dl_detect_out ? proc_dep_vld_vec_35_reg[4] : (proc_35_data_FIFO_blk[4] | proc_35_data_PIPO_blk[4] | proc_35_start_FIFO_blk[4] | proc_35_TLF_FIFO_blk[4] | proc_35_input_sync_blk[4] | proc_35_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_35_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_35_reg <= proc_dep_vld_vec_35;
        end
    end
    assign in_chan_dep_vld_vec_35[0] = dep_chan_vld_32_35;
    assign in_chan_dep_data_vec_35[54 : 0] = dep_chan_data_32_35;
    assign token_in_vec_35[0] = token_32_35;
    assign in_chan_dep_vld_vec_35[1] = dep_chan_vld_36_35;
    assign in_chan_dep_data_vec_35[109 : 55] = dep_chan_data_36_35;
    assign token_in_vec_35[1] = token_36_35;
    assign in_chan_dep_vld_vec_35[2] = dep_chan_vld_40_35;
    assign in_chan_dep_data_vec_35[164 : 110] = dep_chan_data_40_35;
    assign token_in_vec_35[2] = token_40_35;
    assign in_chan_dep_vld_vec_35[3] = dep_chan_vld_44_35;
    assign in_chan_dep_data_vec_35[219 : 165] = dep_chan_data_44_35;
    assign token_in_vec_35[3] = token_44_35;
    assign in_chan_dep_vld_vec_35[4] = dep_chan_vld_46_35;
    assign in_chan_dep_data_vec_35[274 : 220] = dep_chan_data_46_35;
    assign token_in_vec_35[4] = token_46_35;
    assign dep_chan_vld_35_32 = out_chan_dep_vld_vec_35[0];
    assign dep_chan_data_35_32 = out_chan_dep_data_35;
    assign token_35_32 = token_out_vec_35[0];
    assign dep_chan_vld_35_44 = out_chan_dep_vld_vec_35[1];
    assign dep_chan_data_35_44 = out_chan_dep_data_35;
    assign token_35_44 = token_out_vec_35[1];
    assign dep_chan_vld_35_46 = out_chan_dep_vld_vec_35[2];
    assign dep_chan_data_35_46 = out_chan_dep_data_35;
    assign token_35_46 = token_out_vec_35[2];
    assign dep_chan_vld_35_36 = out_chan_dep_vld_vec_35[3];
    assign dep_chan_data_35_36 = out_chan_dep_data_35;
    assign token_35_36 = token_out_vec_35[3];
    assign dep_chan_vld_35_40 = out_chan_dep_vld_vec_35[4];
    assign dep_chan_data_35_40 = out_chan_dep_data_35;
    assign token_35_40 = token_out_vec_35[4];

    // Process: append_payload_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 36, 5, 5) rocev2_top_hls_deadlock_detect_unit_36 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_36),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_36),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_36),
        .token_in_vec(token_in_vec_36),
        .dl_detect_in(dl_detect_out),
        .origin(origin[36]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_36),
        .out_chan_dep_data(out_chan_dep_data_36),
        .token_out_vec(token_out_vec_36),
        .dl_detect_out(dl_in_vec[36]));

    assign proc_36_data_FIFO_blk[0] = 1'b0 | (~append_payload_512_0_U0.tx_packetInfoFifo_blk_n) | (~append_payload_512_0_U0.tx_exh2payFifo_blk_n);
    assign proc_36_data_PIPO_blk[0] = 1'b0;
    assign proc_36_start_FIFO_blk[0] = 1'b0;
    assign proc_36_TLF_FIFO_blk[0] = 1'b0;
    assign proc_36_input_sync_blk[0] = 1'b0;
    assign proc_36_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_36[0] = dl_detect_out ? proc_dep_vld_vec_36_reg[0] : (proc_36_data_FIFO_blk[0] | proc_36_data_PIPO_blk[0] | proc_36_start_FIFO_blk[0] | proc_36_TLF_FIFO_blk[0] | proc_36_input_sync_blk[0] | proc_36_output_sync_blk[0]);
    assign proc_36_data_FIFO_blk[1] = 1'b0 | (~append_payload_512_0_U0.tx_exh2shiftFifo_blk_n);
    assign proc_36_data_PIPO_blk[1] = 1'b0;
    assign proc_36_start_FIFO_blk[1] = 1'b0;
    assign proc_36_TLF_FIFO_blk[1] = 1'b0;
    assign proc_36_input_sync_blk[1] = 1'b0;
    assign proc_36_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_36[1] = dl_detect_out ? proc_dep_vld_vec_36_reg[1] : (proc_36_data_FIFO_blk[1] | proc_36_data_PIPO_blk[1] | proc_36_start_FIFO_blk[1] | proc_36_TLF_FIFO_blk[1] | proc_36_input_sync_blk[1] | proc_36_output_sync_blk[1]);
    assign proc_36_data_FIFO_blk[2] = 1'b0 | (~append_payload_512_0_U0.tx_aethShift2payFifo_blk_n);
    assign proc_36_data_PIPO_blk[2] = 1'b0;
    assign proc_36_start_FIFO_blk[2] = 1'b0;
    assign proc_36_TLF_FIFO_blk[2] = 1'b0;
    assign proc_36_input_sync_blk[2] = 1'b0;
    assign proc_36_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_36[2] = dl_detect_out ? proc_dep_vld_vec_36_reg[2] : (proc_36_data_FIFO_blk[2] | proc_36_data_PIPO_blk[2] | proc_36_start_FIFO_blk[2] | proc_36_TLF_FIFO_blk[2] | proc_36_input_sync_blk[2] | proc_36_output_sync_blk[2]);
    assign proc_36_data_FIFO_blk[3] = 1'b0 | (~append_payload_512_0_U0.tx_rethShift2payFifo_blk_n);
    assign proc_36_data_PIPO_blk[3] = 1'b0;
    assign proc_36_start_FIFO_blk[3] = 1'b0;
    assign proc_36_TLF_FIFO_blk[3] = 1'b0;
    assign proc_36_input_sync_blk[3] = 1'b0;
    assign proc_36_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_36[3] = dl_detect_out ? proc_dep_vld_vec_36_reg[3] : (proc_36_data_FIFO_blk[3] | proc_36_data_PIPO_blk[3] | proc_36_start_FIFO_blk[3] | proc_36_TLF_FIFO_blk[3] | proc_36_input_sync_blk[3] | proc_36_output_sync_blk[3]);
    assign proc_36_data_FIFO_blk[4] = 1'b0 | (~append_payload_512_0_U0.tx_rawPayFifo_blk_n);
    assign proc_36_data_PIPO_blk[4] = 1'b0;
    assign proc_36_start_FIFO_blk[4] = 1'b0;
    assign proc_36_TLF_FIFO_blk[4] = 1'b0;
    assign proc_36_input_sync_blk[4] = 1'b0;
    assign proc_36_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_36[4] = dl_detect_out ? proc_dep_vld_vec_36_reg[4] : (proc_36_data_FIFO_blk[4] | proc_36_data_PIPO_blk[4] | proc_36_start_FIFO_blk[4] | proc_36_TLF_FIFO_blk[4] | proc_36_input_sync_blk[4] | proc_36_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_36_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_36_reg <= proc_dep_vld_vec_36;
        end
    end
    assign in_chan_dep_vld_vec_36[0] = dep_chan_vld_31_36;
    assign in_chan_dep_data_vec_36[54 : 0] = dep_chan_data_31_36;
    assign token_in_vec_36[0] = token_31_36;
    assign in_chan_dep_vld_vec_36[1] = dep_chan_vld_33_36;
    assign in_chan_dep_data_vec_36[109 : 55] = dep_chan_data_33_36;
    assign token_in_vec_36[1] = token_33_36;
    assign in_chan_dep_vld_vec_36[2] = dep_chan_vld_34_36;
    assign in_chan_dep_data_vec_36[164 : 110] = dep_chan_data_34_36;
    assign token_in_vec_36[2] = token_34_36;
    assign in_chan_dep_vld_vec_36[3] = dep_chan_vld_35_36;
    assign in_chan_dep_data_vec_36[219 : 165] = dep_chan_data_35_36;
    assign token_in_vec_36[3] = token_35_36;
    assign in_chan_dep_vld_vec_36[4] = dep_chan_vld_37_36;
    assign in_chan_dep_data_vec_36[274 : 220] = dep_chan_data_37_36;
    assign token_in_vec_36[4] = token_37_36;
    assign dep_chan_vld_36_35 = out_chan_dep_vld_vec_36[0];
    assign dep_chan_data_36_35 = out_chan_dep_data_36;
    assign token_36_35 = token_out_vec_36[0];
    assign dep_chan_vld_36_37 = out_chan_dep_vld_vec_36[1];
    assign dep_chan_data_36_37 = out_chan_dep_data_36;
    assign token_36_37 = token_out_vec_36[1];
    assign dep_chan_vld_36_33 = out_chan_dep_vld_vec_36[2];
    assign dep_chan_data_36_33 = out_chan_dep_data_36;
    assign token_36_33 = token_out_vec_36[2];
    assign dep_chan_vld_36_34 = out_chan_dep_vld_vec_36[3];
    assign dep_chan_data_36_34 = out_chan_dep_data_36;
    assign token_36_34 = token_out_vec_36[3];
    assign dep_chan_vld_36_31 = out_chan_dep_vld_vec_36[4];
    assign dep_chan_data_36_31 = out_chan_dep_data_36;
    assign token_36_31 = token_out_vec_36[4];

    // Process: lshiftWordByOctet_512_11_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 37, 2, 2) rocev2_top_hls_deadlock_detect_unit_37 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_37),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_37),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_37),
        .token_in_vec(token_in_vec_37),
        .dl_detect_in(dl_detect_out),
        .origin(origin[37]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_37),
        .out_chan_dep_data(out_chan_dep_data_37),
        .token_out_vec(token_out_vec_37),
        .dl_detect_out(dl_in_vec[37]));

    assign proc_37_data_FIFO_blk[0] = 1'b0 | (~lshiftWordByOctet_512_11_0_U0.tx_shift2ibhFifo_blk_n);
    assign proc_37_data_PIPO_blk[0] = 1'b0;
    assign proc_37_start_FIFO_blk[0] = 1'b0;
    assign proc_37_TLF_FIFO_blk[0] = 1'b0;
    assign proc_37_input_sync_blk[0] = 1'b0;
    assign proc_37_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_37[0] = dl_detect_out ? proc_dep_vld_vec_37_reg[0] : (proc_37_data_FIFO_blk[0] | proc_37_data_PIPO_blk[0] | proc_37_start_FIFO_blk[0] | proc_37_TLF_FIFO_blk[0] | proc_37_input_sync_blk[0] | proc_37_output_sync_blk[0]);
    assign proc_37_data_FIFO_blk[1] = 1'b0 | (~lshiftWordByOctet_512_11_0_U0.tx_exh2shiftFifo_blk_n);
    assign proc_37_data_PIPO_blk[1] = 1'b0;
    assign proc_37_start_FIFO_blk[1] = 1'b0;
    assign proc_37_TLF_FIFO_blk[1] = 1'b0;
    assign proc_37_input_sync_blk[1] = 1'b0;
    assign proc_37_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_37[1] = dl_detect_out ? proc_dep_vld_vec_37_reg[1] : (proc_37_data_FIFO_blk[1] | proc_37_data_PIPO_blk[1] | proc_37_start_FIFO_blk[1] | proc_37_TLF_FIFO_blk[1] | proc_37_input_sync_blk[1] | proc_37_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_37_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_37_reg <= proc_dep_vld_vec_37;
        end
    end
    assign in_chan_dep_vld_vec_37[0] = dep_chan_vld_36_37;
    assign in_chan_dep_data_vec_37[54 : 0] = dep_chan_data_36_37;
    assign token_in_vec_37[0] = token_36_37;
    assign in_chan_dep_vld_vec_37[1] = dep_chan_vld_39_37;
    assign in_chan_dep_data_vec_37[109 : 55] = dep_chan_data_39_37;
    assign token_in_vec_37[1] = token_39_37;
    assign dep_chan_vld_37_39 = out_chan_dep_vld_vec_37[0];
    assign dep_chan_data_37_39 = out_chan_dep_data_37;
    assign token_37_39 = token_out_vec_37[0];
    assign dep_chan_vld_37_36 = out_chan_dep_vld_vec_37[1];
    assign dep_chan_data_37_36 = out_chan_dep_data_37;
    assign token_37_36 = token_out_vec_37[1];

    // Process: generate_ibh_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 38, 5, 5) rocev2_top_hls_deadlock_detect_unit_38 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_38),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_38),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_38),
        .token_in_vec(token_in_vec_38),
        .dl_detect_in(dl_detect_out),
        .origin(origin[38]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_38),
        .out_chan_dep_data(out_chan_dep_data_38),
        .token_out_vec(token_out_vec_38),
        .dl_detect_out(dl_in_vec[38]));

    assign proc_38_data_FIFO_blk[0] = 1'b0 | (~generate_ibh_512_0_U0.tx_ibhMetaFifo_blk_n);
    assign proc_38_data_PIPO_blk[0] = 1'b0;
    assign proc_38_start_FIFO_blk[0] = 1'b0;
    assign proc_38_TLF_FIFO_blk[0] = 1'b0;
    assign proc_38_input_sync_blk[0] = 1'b0;
    assign proc_38_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_38[0] = dl_detect_out ? proc_dep_vld_vec_38_reg[0] : (proc_38_data_FIFO_blk[0] | proc_38_data_PIPO_blk[0] | proc_38_start_FIFO_blk[0] | proc_38_TLF_FIFO_blk[0] | proc_38_input_sync_blk[0] | proc_38_output_sync_blk[0]);
    assign proc_38_data_FIFO_blk[1] = 1'b0 | (~generate_ibh_512_0_U0.tx_dstQpFifo_blk_n);
    assign proc_38_data_PIPO_blk[1] = 1'b0;
    assign proc_38_start_FIFO_blk[1] = 1'b0;
    assign proc_38_TLF_FIFO_blk[1] = 1'b0;
    assign proc_38_input_sync_blk[1] = 1'b0;
    assign proc_38_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_38[1] = dl_detect_out ? proc_dep_vld_vec_38_reg[1] : (proc_38_data_FIFO_blk[1] | proc_38_data_PIPO_blk[1] | proc_38_start_FIFO_blk[1] | proc_38_TLF_FIFO_blk[1] | proc_38_input_sync_blk[1] | proc_38_output_sync_blk[1]);
    assign proc_38_data_FIFO_blk[2] = 1'b0 | (~generate_ibh_512_0_U0.tx_ibhHeaderFifo_blk_n);
    assign proc_38_data_PIPO_blk[2] = 1'b0;
    assign proc_38_start_FIFO_blk[2] = 1'b0;
    assign proc_38_TLF_FIFO_blk[2] = 1'b0;
    assign proc_38_input_sync_blk[2] = 1'b0;
    assign proc_38_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_38[2] = dl_detect_out ? proc_dep_vld_vec_38_reg[2] : (proc_38_data_FIFO_blk[2] | proc_38_data_PIPO_blk[2] | proc_38_start_FIFO_blk[2] | proc_38_TLF_FIFO_blk[2] | proc_38_input_sync_blk[2] | proc_38_output_sync_blk[2]);
    assign proc_38_data_FIFO_blk[3] = 1'b0 | (~generate_ibh_512_0_U0.txIbh2stateTable_upd_req_blk_n) | (~generate_ibh_512_0_U0.stateTable2txIbh_rsp_blk_n);
    assign proc_38_data_PIPO_blk[3] = 1'b0;
    assign proc_38_start_FIFO_blk[3] = 1'b0;
    assign proc_38_TLF_FIFO_blk[3] = 1'b0;
    assign proc_38_input_sync_blk[3] = 1'b0;
    assign proc_38_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_38[3] = dl_detect_out ? proc_dep_vld_vec_38_reg[3] : (proc_38_data_FIFO_blk[3] | proc_38_data_PIPO_blk[3] | proc_38_start_FIFO_blk[3] | proc_38_TLF_FIFO_blk[3] | proc_38_input_sync_blk[3] | proc_38_output_sync_blk[3]);
    assign proc_38_data_FIFO_blk[4] = 1'b0 | (~generate_ibh_512_0_U0.tx2retrans_insertMeta_blk_n);
    assign proc_38_data_PIPO_blk[4] = 1'b0;
    assign proc_38_start_FIFO_blk[4] = 1'b0;
    assign proc_38_TLF_FIFO_blk[4] = 1'b0;
    assign proc_38_input_sync_blk[4] = 1'b0;
    assign proc_38_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_38[4] = dl_detect_out ? proc_dep_vld_vec_38_reg[4] : (proc_38_data_FIFO_blk[4] | proc_38_data_PIPO_blk[4] | proc_38_start_FIFO_blk[4] | proc_38_TLF_FIFO_blk[4] | proc_38_input_sync_blk[4] | proc_38_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_38_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_38_reg <= proc_dep_vld_vec_38;
        end
    end
    assign in_chan_dep_vld_vec_38[0] = dep_chan_vld_32_38;
    assign in_chan_dep_data_vec_38[54 : 0] = dep_chan_data_32_38;
    assign token_in_vec_38[0] = token_32_38;
    assign in_chan_dep_vld_vec_38[1] = dep_chan_vld_39_38;
    assign in_chan_dep_data_vec_38[109 : 55] = dep_chan_data_39_38;
    assign token_in_vec_38[1] = token_39_38;
    assign in_chan_dep_vld_vec_38[2] = dep_chan_vld_40_38;
    assign in_chan_dep_data_vec_38[164 : 110] = dep_chan_data_40_38;
    assign token_in_vec_38[2] = token_40_38;
    assign in_chan_dep_vld_vec_38[3] = dep_chan_vld_43_38;
    assign in_chan_dep_data_vec_38[219 : 165] = dep_chan_data_43_38;
    assign token_in_vec_38[3] = token_43_38;
    assign in_chan_dep_vld_vec_38[4] = dep_chan_vld_45_38;
    assign in_chan_dep_data_vec_38[274 : 220] = dep_chan_data_45_38;
    assign token_in_vec_38[4] = token_45_38;
    assign dep_chan_vld_38_32 = out_chan_dep_vld_vec_38[0];
    assign dep_chan_data_38_32 = out_chan_dep_data_38;
    assign token_38_32 = token_out_vec_38[0];
    assign dep_chan_vld_38_40 = out_chan_dep_vld_vec_38[1];
    assign dep_chan_data_38_40 = out_chan_dep_data_38;
    assign token_38_40 = token_out_vec_38[1];
    assign dep_chan_vld_38_39 = out_chan_dep_vld_vec_38[2];
    assign dep_chan_data_38_39 = out_chan_dep_data_38;
    assign token_38_39 = token_out_vec_38[2];
    assign dep_chan_vld_38_43 = out_chan_dep_vld_vec_38[3];
    assign dep_chan_data_38_43 = out_chan_dep_data_38;
    assign token_38_43 = token_out_vec_38[3];
    assign dep_chan_vld_38_45 = out_chan_dep_vld_vec_38[4];
    assign dep_chan_data_38_45 = out_chan_dep_data_38;
    assign token_38_45 = token_out_vec_38[4];

    // Process: prepend_ibh_header_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 39, 3, 3) rocev2_top_hls_deadlock_detect_unit_39 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_39),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_39),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_39),
        .token_in_vec(token_in_vec_39),
        .dl_detect_in(dl_detect_out),
        .origin(origin[39]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_39),
        .out_chan_dep_data(out_chan_dep_data_39),
        .token_out_vec(token_out_vec_39),
        .dl_detect_out(dl_in_vec[39]));

    assign proc_39_data_FIFO_blk[0] = 1'b0 | (~prepend_ibh_header_512_0_U0.tx_ibhHeaderFifo_blk_n);
    assign proc_39_data_PIPO_blk[0] = 1'b0;
    assign proc_39_start_FIFO_blk[0] = 1'b0;
    assign proc_39_TLF_FIFO_blk[0] = 1'b0;
    assign proc_39_input_sync_blk[0] = 1'b0;
    assign proc_39_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_39[0] = dl_detect_out ? proc_dep_vld_vec_39_reg[0] : (proc_39_data_FIFO_blk[0] | proc_39_data_PIPO_blk[0] | proc_39_start_FIFO_blk[0] | proc_39_TLF_FIFO_blk[0] | proc_39_input_sync_blk[0] | proc_39_output_sync_blk[0]);
    assign proc_39_data_FIFO_blk[1] = 1'b0 | (~prepend_ibh_header_512_0_U0.tx_ib2udpFifo_blk_n);
    assign proc_39_data_PIPO_blk[1] = 1'b0;
    assign proc_39_start_FIFO_blk[1] = 1'b0;
    assign proc_39_TLF_FIFO_blk[1] = 1'b0;
    assign proc_39_input_sync_blk[1] = 1'b0;
    assign proc_39_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_39[1] = dl_detect_out ? proc_dep_vld_vec_39_reg[1] : (proc_39_data_FIFO_blk[1] | proc_39_data_PIPO_blk[1] | proc_39_start_FIFO_blk[1] | proc_39_TLF_FIFO_blk[1] | proc_39_input_sync_blk[1] | proc_39_output_sync_blk[1]);
    assign proc_39_data_FIFO_blk[2] = 1'b0 | (~prepend_ibh_header_512_0_U0.tx_shift2ibhFifo_blk_n);
    assign proc_39_data_PIPO_blk[2] = 1'b0;
    assign proc_39_start_FIFO_blk[2] = 1'b0;
    assign proc_39_TLF_FIFO_blk[2] = 1'b0;
    assign proc_39_input_sync_blk[2] = 1'b0;
    assign proc_39_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_39[2] = dl_detect_out ? proc_dep_vld_vec_39_reg[2] : (proc_39_data_FIFO_blk[2] | proc_39_data_PIPO_blk[2] | proc_39_start_FIFO_blk[2] | proc_39_TLF_FIFO_blk[2] | proc_39_input_sync_blk[2] | proc_39_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_39_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_39_reg <= proc_dep_vld_vec_39;
        end
    end
    assign in_chan_dep_vld_vec_39[0] = dep_chan_vld_13_39;
    assign in_chan_dep_data_vec_39[54 : 0] = dep_chan_data_13_39;
    assign token_in_vec_39[0] = token_13_39;
    assign in_chan_dep_vld_vec_39[1] = dep_chan_vld_37_39;
    assign in_chan_dep_data_vec_39[109 : 55] = dep_chan_data_37_39;
    assign token_in_vec_39[1] = token_37_39;
    assign in_chan_dep_vld_vec_39[2] = dep_chan_vld_38_39;
    assign in_chan_dep_data_vec_39[164 : 110] = dep_chan_data_38_39;
    assign token_in_vec_39[2] = token_38_39;
    assign dep_chan_vld_39_38 = out_chan_dep_vld_vec_39[0];
    assign dep_chan_data_39_38 = out_chan_dep_data_39;
    assign token_39_38 = token_out_vec_39[0];
    assign dep_chan_vld_39_13 = out_chan_dep_vld_vec_39[1];
    assign dep_chan_data_39_13 = out_chan_dep_data_39;
    assign token_39_13 = token_out_vec_39[1];
    assign dep_chan_vld_39_37 = out_chan_dep_vld_vec_39[2];
    assign dep_chan_data_39_37 = out_chan_dep_data_39;
    assign token_39_37 = token_out_vec_39[2];

    // Process: tx_ipUdpMetaMerger_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 40, 4, 4) rocev2_top_hls_deadlock_detect_unit_40 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_40),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_40),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_40),
        .token_in_vec(token_in_vec_40),
        .dl_detect_in(dl_detect_out),
        .origin(origin[40]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_40),
        .out_chan_dep_data(out_chan_dep_data_40),
        .token_out_vec(token_out_vec_40),
        .dl_detect_out(dl_in_vec[40]));

    assign proc_40_data_FIFO_blk[0] = 1'b0 | (~tx_ipUdpMetaMerger_0_U0.tx_connTable2ibh_rsp_blk_n);
    assign proc_40_data_PIPO_blk[0] = 1'b0;
    assign proc_40_start_FIFO_blk[0] = 1'b0;
    assign proc_40_TLF_FIFO_blk[0] = 1'b0;
    assign proc_40_input_sync_blk[0] = 1'b0;
    assign proc_40_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_40[0] = dl_detect_out ? proc_dep_vld_vec_40_reg[0] : (proc_40_data_FIFO_blk[0] | proc_40_data_PIPO_blk[0] | proc_40_start_FIFO_blk[0] | proc_40_TLF_FIFO_blk[0] | proc_40_input_sync_blk[0] | proc_40_output_sync_blk[0]);
    assign proc_40_data_FIFO_blk[1] = 1'b0 | (~tx_ipUdpMetaMerger_0_U0.tx_lengthFifo_blk_n);
    assign proc_40_data_PIPO_blk[1] = 1'b0;
    assign proc_40_start_FIFO_blk[1] = 1'b0;
    assign proc_40_TLF_FIFO_blk[1] = 1'b0;
    assign proc_40_input_sync_blk[1] = 1'b0;
    assign proc_40_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_40[1] = dl_detect_out ? proc_dep_vld_vec_40_reg[1] : (proc_40_data_FIFO_blk[1] | proc_40_data_PIPO_blk[1] | proc_40_start_FIFO_blk[1] | proc_40_TLF_FIFO_blk[1] | proc_40_input_sync_blk[1] | proc_40_output_sync_blk[1]);
    assign proc_40_data_FIFO_blk[2] = 1'b0 | (~tx_ipUdpMetaMerger_0_U0.tx_ipUdpMetaFifo_blk_n);
    assign proc_40_data_PIPO_blk[2] = 1'b0;
    assign proc_40_start_FIFO_blk[2] = 1'b0;
    assign proc_40_TLF_FIFO_blk[2] = 1'b0;
    assign proc_40_input_sync_blk[2] = 1'b0;
    assign proc_40_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_40[2] = dl_detect_out ? proc_dep_vld_vec_40_reg[2] : (proc_40_data_FIFO_blk[2] | proc_40_data_PIPO_blk[2] | proc_40_start_FIFO_blk[2] | proc_40_TLF_FIFO_blk[2] | proc_40_input_sync_blk[2] | proc_40_output_sync_blk[2]);
    assign proc_40_data_FIFO_blk[3] = 1'b0 | (~tx_ipUdpMetaMerger_0_U0.tx_dstQpFifo_blk_n);
    assign proc_40_data_PIPO_blk[3] = 1'b0;
    assign proc_40_start_FIFO_blk[3] = 1'b0;
    assign proc_40_TLF_FIFO_blk[3] = 1'b0;
    assign proc_40_input_sync_blk[3] = 1'b0;
    assign proc_40_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_40[3] = dl_detect_out ? proc_dep_vld_vec_40_reg[3] : (proc_40_data_FIFO_blk[3] | proc_40_data_PIPO_blk[3] | proc_40_start_FIFO_blk[3] | proc_40_TLF_FIFO_blk[3] | proc_40_input_sync_blk[3] | proc_40_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_40_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_40_reg <= proc_dep_vld_vec_40;
        end
    end
    assign in_chan_dep_vld_vec_40[0] = dep_chan_vld_12_40;
    assign in_chan_dep_data_vec_40[54 : 0] = dep_chan_data_12_40;
    assign token_in_vec_40[0] = token_12_40;
    assign in_chan_dep_vld_vec_40[1] = dep_chan_vld_35_40;
    assign in_chan_dep_data_vec_40[109 : 55] = dep_chan_data_35_40;
    assign token_in_vec_40[1] = token_35_40;
    assign in_chan_dep_vld_vec_40[2] = dep_chan_vld_38_40;
    assign in_chan_dep_data_vec_40[164 : 110] = dep_chan_data_38_40;
    assign token_in_vec_40[2] = token_38_40;
    assign in_chan_dep_vld_vec_40[3] = dep_chan_vld_42_40;
    assign in_chan_dep_data_vec_40[219 : 165] = dep_chan_data_42_40;
    assign token_in_vec_40[3] = token_42_40;
    assign dep_chan_vld_40_42 = out_chan_dep_vld_vec_40[0];
    assign dep_chan_data_40_42 = out_chan_dep_data_40;
    assign token_40_42 = token_out_vec_40[0];
    assign dep_chan_vld_40_35 = out_chan_dep_vld_vec_40[1];
    assign dep_chan_data_40_35 = out_chan_dep_data_40;
    assign token_40_35 = token_out_vec_40[1];
    assign dep_chan_vld_40_12 = out_chan_dep_vld_vec_40[2];
    assign dep_chan_data_40_12 = out_chan_dep_data_40;
    assign token_40_12 = token_out_vec_40[2];
    assign dep_chan_vld_40_38 = out_chan_dep_vld_vec_40[3];
    assign dep_chan_data_40_38 = out_chan_dep_data_40;
    assign token_40_38 = token_out_vec_40[3];

    // Process: mem_cmd_merger_512_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 41, 3, 3) rocev2_top_hls_deadlock_detect_unit_41 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_41),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_41),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_41),
        .token_in_vec(token_in_vec_41),
        .dl_detect_in(dl_detect_out),
        .origin(origin[41]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_41),
        .out_chan_dep_data(out_chan_dep_data_41),
        .token_out_vec(token_out_vec_41),
        .dl_detect_out(dl_in_vec[41]));

    assign proc_41_data_FIFO_blk[0] = 1'b0 | (~mem_cmd_merger_512_0_U0.rx_remoteMemCmd_blk_n);
    assign proc_41_data_PIPO_blk[0] = 1'b0;
    assign proc_41_start_FIFO_blk[0] = 1'b0;
    assign proc_41_TLF_FIFO_blk[0] = 1'b0;
    assign proc_41_input_sync_blk[0] = 1'b0;
    assign proc_41_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_41[0] = dl_detect_out ? proc_dep_vld_vec_41_reg[0] : (proc_41_data_FIFO_blk[0] | proc_41_data_PIPO_blk[0] | proc_41_start_FIFO_blk[0] | proc_41_TLF_FIFO_blk[0] | proc_41_input_sync_blk[0] | proc_41_output_sync_blk[0]);
    assign proc_41_data_FIFO_blk[1] = 1'b0 | (~mem_cmd_merger_512_0_U0.tx_pkgInfoFifo_blk_n);
    assign proc_41_data_PIPO_blk[1] = 1'b0;
    assign proc_41_start_FIFO_blk[1] = 1'b0;
    assign proc_41_TLF_FIFO_blk[1] = 1'b0;
    assign proc_41_input_sync_blk[1] = 1'b0;
    assign proc_41_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_41[1] = dl_detect_out ? proc_dep_vld_vec_41_reg[1] : (proc_41_data_FIFO_blk[1] | proc_41_data_PIPO_blk[1] | proc_41_start_FIFO_blk[1] | proc_41_TLF_FIFO_blk[1] | proc_41_input_sync_blk[1] | proc_41_output_sync_blk[1]);
    assign proc_41_data_FIFO_blk[2] = 1'b0 | (~mem_cmd_merger_512_0_U0.tx_localMemCmdFifo_blk_n);
    assign proc_41_data_PIPO_blk[2] = 1'b0;
    assign proc_41_start_FIFO_blk[2] = 1'b0;
    assign proc_41_TLF_FIFO_blk[2] = 1'b0;
    assign proc_41_input_sync_blk[2] = 1'b0;
    assign proc_41_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_41[2] = dl_detect_out ? proc_dep_vld_vec_41_reg[2] : (proc_41_data_FIFO_blk[2] | proc_41_data_PIPO_blk[2] | proc_41_start_FIFO_blk[2] | proc_41_TLF_FIFO_blk[2] | proc_41_input_sync_blk[2] | proc_41_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_41_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_41_reg <= proc_dep_vld_vec_41;
        end
    end
    assign in_chan_dep_vld_vec_41[0] = dep_chan_vld_25_41;
    assign in_chan_dep_data_vec_41[54 : 0] = dep_chan_data_25_41;
    assign token_in_vec_41[0] = token_25_41;
    assign in_chan_dep_vld_vec_41[1] = dep_chan_vld_30_41;
    assign in_chan_dep_data_vec_41[109 : 55] = dep_chan_data_30_41;
    assign token_in_vec_41[1] = token_30_41;
    assign in_chan_dep_vld_vec_41[2] = dep_chan_vld_31_41;
    assign in_chan_dep_data_vec_41[164 : 110] = dep_chan_data_31_41;
    assign token_in_vec_41[2] = token_31_41;
    assign dep_chan_vld_41_25 = out_chan_dep_vld_vec_41[0];
    assign dep_chan_data_41_25 = out_chan_dep_data_41;
    assign token_41_25 = token_out_vec_41[0];
    assign dep_chan_vld_41_31 = out_chan_dep_vld_vec_41[1];
    assign dep_chan_data_41_31 = out_chan_dep_data_41;
    assign token_41_31 = token_out_vec_41[1];
    assign dep_chan_vld_41_30 = out_chan_dep_vld_vec_41[2];
    assign dep_chan_data_41_30 = out_chan_dep_data_41;
    assign token_41_30 = token_out_vec_41[2];

    // Process: QPContext_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 42, 4, 4) rocev2_top_hls_deadlock_detect_unit_42 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_42),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_42),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_42),
        .token_in_vec(token_in_vec_42),
        .dl_detect_in(dl_detect_out),
        .origin(origin[42]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_42),
        .out_chan_dep_data(out_chan_dep_data_42),
        .token_out_vec(token_out_vec_42),
        .dl_detect_out(dl_in_vec[42]));

    assign proc_42_data_FIFO_blk[0] = 1'b0 | (~QPContext_table_0_U0.qpif2QPC_upd_blk_n);
    assign proc_42_data_PIPO_blk[0] = 1'b0;
    assign proc_42_start_FIFO_blk[0] = 1'b0;
    assign proc_42_TLF_FIFO_blk[0] = 1'b0;
    assign proc_42_input_sync_blk[0] = 1'b0;
    assign proc_42_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_42[0] = dl_detect_out ? proc_dep_vld_vec_42_reg[0] : (proc_42_data_FIFO_blk[0] | proc_42_data_PIPO_blk[0] | proc_42_start_FIFO_blk[0] | proc_42_TLF_FIFO_blk[0] | proc_42_input_sync_blk[0] | proc_42_output_sync_blk[0]);
    assign proc_42_data_FIFO_blk[1] = 1'b0 | (~QPContext_table_0_U0.tx_ibhconnTable_req_blk_n);
    assign proc_42_data_PIPO_blk[1] = 1'b0;
    assign proc_42_start_FIFO_blk[1] = 1'b0;
    assign proc_42_TLF_FIFO_blk[1] = 1'b0;
    assign proc_42_input_sync_blk[1] = 1'b0;
    assign proc_42_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_42[1] = dl_detect_out ? proc_dep_vld_vec_42_reg[1] : (proc_42_data_FIFO_blk[1] | proc_42_data_PIPO_blk[1] | proc_42_start_FIFO_blk[1] | proc_42_TLF_FIFO_blk[1] | proc_42_input_sync_blk[1] | proc_42_output_sync_blk[1]);
    assign proc_42_data_FIFO_blk[2] = 1'b0 | (~QPContext_table_0_U0.tx_connTable2ibh_rsp_blk_n);
    assign proc_42_data_PIPO_blk[2] = 1'b0;
    assign proc_42_start_FIFO_blk[2] = 1'b0;
    assign proc_42_TLF_FIFO_blk[2] = 1'b0;
    assign proc_42_input_sync_blk[2] = 1'b0;
    assign proc_42_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_42[2] = dl_detect_out ? proc_dep_vld_vec_42_reg[2] : (proc_42_data_FIFO_blk[2] | proc_42_data_PIPO_blk[2] | proc_42_start_FIFO_blk[2] | proc_42_TLF_FIFO_blk[2] | proc_42_input_sync_blk[2] | proc_42_output_sync_blk[2]);
    assign proc_42_data_FIFO_blk[3] = 1'b0 | (~QPContext_table_0_U0.wqecqe2connTable_req_blk_n) | (~QPContext_table_0_U0.connTable2wqecqe_rsp_blk_n);
    assign proc_42_data_PIPO_blk[3] = 1'b0;
    assign proc_42_start_FIFO_blk[3] = 1'b0;
    assign proc_42_TLF_FIFO_blk[3] = 1'b0;
    assign proc_42_input_sync_blk[3] = 1'b0;
    assign proc_42_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_42[3] = dl_detect_out ? proc_dep_vld_vec_42_reg[3] : (proc_42_data_FIFO_blk[3] | proc_42_data_PIPO_blk[3] | proc_42_start_FIFO_blk[3] | proc_42_TLF_FIFO_blk[3] | proc_42_input_sync_blk[3] | proc_42_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_42_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_42_reg <= proc_dep_vld_vec_42;
        end
    end
    assign in_chan_dep_vld_vec_42[0] = dep_chan_vld_15_42;
    assign in_chan_dep_data_vec_42[54 : 0] = dep_chan_data_15_42;
    assign token_in_vec_42[0] = token_15_42;
    assign in_chan_dep_vld_vec_42[1] = dep_chan_vld_32_42;
    assign in_chan_dep_data_vec_42[109 : 55] = dep_chan_data_32_42;
    assign token_in_vec_42[1] = token_32_42;
    assign in_chan_dep_vld_vec_42[2] = dep_chan_vld_40_42;
    assign in_chan_dep_data_vec_42[164 : 110] = dep_chan_data_40_42;
    assign token_in_vec_42[2] = token_40_42;
    assign in_chan_dep_vld_vec_42[3] = dep_chan_vld_54_42;
    assign in_chan_dep_data_vec_42[219 : 165] = dep_chan_data_54_42;
    assign token_in_vec_42[3] = token_54_42;
    assign dep_chan_vld_42_15 = out_chan_dep_vld_vec_42[0];
    assign dep_chan_data_42_15 = out_chan_dep_data_42;
    assign token_42_15 = token_out_vec_42[0];
    assign dep_chan_vld_42_32 = out_chan_dep_vld_vec_42[1];
    assign dep_chan_data_42_32 = out_chan_dep_data_42;
    assign token_42_32 = token_out_vec_42[1];
    assign dep_chan_vld_42_40 = out_chan_dep_vld_vec_42[2];
    assign dep_chan_data_42_40 = out_chan_dep_data_42;
    assign token_42_40 = token_out_vec_42[2];
    assign dep_chan_vld_42_54 = out_chan_dep_vld_vec_42[3];
    assign dep_chan_data_42_54 = out_chan_dep_data_42;
    assign token_42_54 = token_out_vec_42[3];

    // Process: state_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 43, 3, 3) rocev2_top_hls_deadlock_detect_unit_43 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_43),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_43),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_43),
        .token_in_vec(token_in_vec_43),
        .dl_detect_in(dl_detect_out),
        .origin(origin[43]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_43),
        .out_chan_dep_data(out_chan_dep_data_43),
        .token_out_vec(token_out_vec_43),
        .dl_detect_out(dl_in_vec[43]));

    assign proc_43_data_FIFO_blk[0] = 1'b0 | (~state_table_0_U0.rxIbh2stateTable_upd_req_blk_n) | (~state_table_0_U0.stateTable2rxIbh_rsp_blk_n);
    assign proc_43_data_PIPO_blk[0] = 1'b0;
    assign proc_43_start_FIFO_blk[0] = 1'b0;
    assign proc_43_TLF_FIFO_blk[0] = 1'b0;
    assign proc_43_input_sync_blk[0] = 1'b0;
    assign proc_43_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_43[0] = dl_detect_out ? proc_dep_vld_vec_43_reg[0] : (proc_43_data_FIFO_blk[0] | proc_43_data_PIPO_blk[0] | proc_43_start_FIFO_blk[0] | proc_43_TLF_FIFO_blk[0] | proc_43_input_sync_blk[0] | proc_43_output_sync_blk[0]);
    assign proc_43_data_FIFO_blk[1] = 1'b0 | (~state_table_0_U0.txIbh2stateTable_upd_req_blk_n) | (~state_table_0_U0.stateTable2txIbh_rsp_blk_n);
    assign proc_43_data_PIPO_blk[1] = 1'b0;
    assign proc_43_start_FIFO_blk[1] = 1'b0;
    assign proc_43_TLF_FIFO_blk[1] = 1'b0;
    assign proc_43_input_sync_blk[1] = 1'b0;
    assign proc_43_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_43[1] = dl_detect_out ? proc_dep_vld_vec_43_reg[1] : (proc_43_data_FIFO_blk[1] | proc_43_data_PIPO_blk[1] | proc_43_start_FIFO_blk[1] | proc_43_TLF_FIFO_blk[1] | proc_43_input_sync_blk[1] | proc_43_output_sync_blk[1]);
    assign proc_43_data_FIFO_blk[2] = 1'b0 | (~state_table_0_U0.qpi2stateTable_upd_req_blk_n) | (~state_table_0_U0.stateTable2qpi_rsp_blk_n);
    assign proc_43_data_PIPO_blk[2] = 1'b0;
    assign proc_43_start_FIFO_blk[2] = 1'b0;
    assign proc_43_TLF_FIFO_blk[2] = 1'b0;
    assign proc_43_input_sync_blk[2] = 1'b0;
    assign proc_43_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_43[2] = dl_detect_out ? proc_dep_vld_vec_43_reg[2] : (proc_43_data_FIFO_blk[2] | proc_43_data_PIPO_blk[2] | proc_43_start_FIFO_blk[2] | proc_43_TLF_FIFO_blk[2] | proc_43_input_sync_blk[2] | proc_43_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_43_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_43_reg <= proc_dep_vld_vec_43;
        end
    end
    assign in_chan_dep_vld_vec_43[0] = dep_chan_vld_15_43;
    assign in_chan_dep_data_vec_43[54 : 0] = dep_chan_data_15_43;
    assign token_in_vec_43[0] = token_15_43;
    assign in_chan_dep_vld_vec_43[1] = dep_chan_vld_20_43;
    assign in_chan_dep_data_vec_43[109 : 55] = dep_chan_data_20_43;
    assign token_in_vec_43[1] = token_20_43;
    assign in_chan_dep_vld_vec_43[2] = dep_chan_vld_38_43;
    assign in_chan_dep_data_vec_43[164 : 110] = dep_chan_data_38_43;
    assign token_in_vec_43[2] = token_38_43;
    assign dep_chan_vld_43_20 = out_chan_dep_vld_vec_43[0];
    assign dep_chan_data_43_20 = out_chan_dep_data_43;
    assign token_43_20 = token_out_vec_43[0];
    assign dep_chan_vld_43_38 = out_chan_dep_vld_vec_43[1];
    assign dep_chan_data_43_38 = out_chan_dep_data_43;
    assign token_43_38 = token_out_vec_43[1];
    assign dep_chan_vld_43_15 = out_chan_dep_vld_vec_43[2];
    assign dep_chan_data_43_15 = out_chan_dep_data_43;
    assign token_43_15 = token_out_vec_43[2];

    // Process: msn_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 44, 3, 3) rocev2_top_hls_deadlock_detect_unit_44 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_44),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_44),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_44),
        .token_in_vec(token_in_vec_44),
        .dl_detect_in(dl_detect_out),
        .origin(origin[44]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_44),
        .out_chan_dep_data(out_chan_dep_data_44),
        .token_out_vec(token_out_vec_44),
        .dl_detect_out(dl_in_vec[44]));

    assign proc_44_data_FIFO_blk[0] = 1'b0 | (~msn_table_0_U0.rxExh2msnTable_upd_req_blk_n) | (~msn_table_0_U0.msnTable2rxExh_rsp_blk_n);
    assign proc_44_data_PIPO_blk[0] = 1'b0;
    assign proc_44_start_FIFO_blk[0] = 1'b0;
    assign proc_44_TLF_FIFO_blk[0] = 1'b0;
    assign proc_44_input_sync_blk[0] = 1'b0;
    assign proc_44_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_44[0] = dl_detect_out ? proc_dep_vld_vec_44_reg[0] : (proc_44_data_FIFO_blk[0] | proc_44_data_PIPO_blk[0] | proc_44_start_FIFO_blk[0] | proc_44_TLF_FIFO_blk[0] | proc_44_input_sync_blk[0] | proc_44_output_sync_blk[0]);
    assign proc_44_data_FIFO_blk[1] = 1'b0 | (~msn_table_0_U0.txExh2msnTable_req_blk_n) | (~msn_table_0_U0.msnTable2txExh_rsp_blk_n);
    assign proc_44_data_PIPO_blk[1] = 1'b0;
    assign proc_44_start_FIFO_blk[1] = 1'b0;
    assign proc_44_TLF_FIFO_blk[1] = 1'b0;
    assign proc_44_input_sync_blk[1] = 1'b0;
    assign proc_44_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_44[1] = dl_detect_out ? proc_dep_vld_vec_44_reg[1] : (proc_44_data_FIFO_blk[1] | proc_44_data_PIPO_blk[1] | proc_44_start_FIFO_blk[1] | proc_44_TLF_FIFO_blk[1] | proc_44_input_sync_blk[1] | proc_44_output_sync_blk[1]);
    assign proc_44_data_FIFO_blk[2] = 1'b0 | (~msn_table_0_U0.if2msnTable_init_blk_n);
    assign proc_44_data_PIPO_blk[2] = 1'b0;
    assign proc_44_start_FIFO_blk[2] = 1'b0;
    assign proc_44_TLF_FIFO_blk[2] = 1'b0;
    assign proc_44_input_sync_blk[2] = 1'b0;
    assign proc_44_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_44[2] = dl_detect_out ? proc_dep_vld_vec_44_reg[2] : (proc_44_data_FIFO_blk[2] | proc_44_data_PIPO_blk[2] | proc_44_start_FIFO_blk[2] | proc_44_TLF_FIFO_blk[2] | proc_44_input_sync_blk[2] | proc_44_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_44_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_44_reg <= proc_dep_vld_vec_44;
        end
    end
    assign in_chan_dep_vld_vec_44[0] = dep_chan_vld_15_44;
    assign in_chan_dep_data_vec_44[54 : 0] = dep_chan_data_15_44;
    assign token_in_vec_44[0] = token_15_44;
    assign in_chan_dep_vld_vec_44[1] = dep_chan_vld_23_44;
    assign in_chan_dep_data_vec_44[109 : 55] = dep_chan_data_23_44;
    assign token_in_vec_44[1] = token_23_44;
    assign in_chan_dep_vld_vec_44[2] = dep_chan_vld_35_44;
    assign in_chan_dep_data_vec_44[164 : 110] = dep_chan_data_35_44;
    assign token_in_vec_44[2] = token_35_44;
    assign dep_chan_vld_44_23 = out_chan_dep_vld_vec_44[0];
    assign dep_chan_data_44_23 = out_chan_dep_data_44;
    assign token_44_23 = token_out_vec_44[0];
    assign dep_chan_vld_44_35 = out_chan_dep_vld_vec_44[1];
    assign dep_chan_data_44_35 = out_chan_dep_data_44;
    assign token_44_35 = token_out_vec_44[1];
    assign dep_chan_vld_44_15 = out_chan_dep_vld_vec_44[2];
    assign dep_chan_data_44_15 = out_chan_dep_data_44;
    assign token_44_15 = token_out_vec_44[2];

    // Process: merge_retrans_request_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 45, 3, 3) rocev2_top_hls_deadlock_detect_unit_45 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_45),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_45),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_45),
        .token_in_vec(token_in_vec_45),
        .dl_detect_in(dl_detect_out),
        .origin(origin[45]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_45),
        .out_chan_dep_data(out_chan_dep_data_45),
        .token_out_vec(token_out_vec_45),
        .dl_detect_out(dl_in_vec[45]));

    assign proc_45_data_FIFO_blk[0] = 1'b0 | (~merge_retrans_request_U0.tx2retrans_insertMeta_blk_n);
    assign proc_45_data_PIPO_blk[0] = 1'b0;
    assign proc_45_start_FIFO_blk[0] = 1'b0;
    assign proc_45_TLF_FIFO_blk[0] = 1'b0;
    assign proc_45_input_sync_blk[0] = 1'b0;
    assign proc_45_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_45[0] = dl_detect_out ? proc_dep_vld_vec_45_reg[0] : (proc_45_data_FIFO_blk[0] | proc_45_data_PIPO_blk[0] | proc_45_start_FIFO_blk[0] | proc_45_TLF_FIFO_blk[0] | proc_45_input_sync_blk[0] | proc_45_output_sync_blk[0]);
    assign proc_45_data_FIFO_blk[1] = 1'b0 | (~merge_retrans_request_U0.tx2retrans_insertAddrLen_blk_n);
    assign proc_45_data_PIPO_blk[1] = 1'b0;
    assign proc_45_start_FIFO_blk[1] = 1'b0;
    assign proc_45_TLF_FIFO_blk[1] = 1'b0;
    assign proc_45_input_sync_blk[1] = 1'b0;
    assign proc_45_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_45[1] = dl_detect_out ? proc_dep_vld_vec_45_reg[1] : (proc_45_data_FIFO_blk[1] | proc_45_data_PIPO_blk[1] | proc_45_start_FIFO_blk[1] | proc_45_TLF_FIFO_blk[1] | proc_45_input_sync_blk[1] | proc_45_output_sync_blk[1]);
    assign proc_45_data_FIFO_blk[2] = 1'b0 | (~merge_retrans_request_U0.tx2retrans_insertRequest_blk_n);
    assign proc_45_data_PIPO_blk[2] = 1'b0;
    assign proc_45_start_FIFO_blk[2] = 1'b0;
    assign proc_45_TLF_FIFO_blk[2] = 1'b0;
    assign proc_45_input_sync_blk[2] = 1'b0;
    assign proc_45_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_45[2] = dl_detect_out ? proc_dep_vld_vec_45_reg[2] : (proc_45_data_FIFO_blk[2] | proc_45_data_PIPO_blk[2] | proc_45_start_FIFO_blk[2] | proc_45_TLF_FIFO_blk[2] | proc_45_input_sync_blk[2] | proc_45_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_45_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_45_reg <= proc_dep_vld_vec_45;
        end
    end
    assign in_chan_dep_vld_vec_45[0] = dep_chan_vld_30_45;
    assign in_chan_dep_data_vec_45[54 : 0] = dep_chan_data_30_45;
    assign token_in_vec_45[0] = token_30_45;
    assign in_chan_dep_vld_vec_45[1] = dep_chan_vld_38_45;
    assign in_chan_dep_data_vec_45[109 : 55] = dep_chan_data_38_45;
    assign token_in_vec_45[1] = token_38_45;
    assign in_chan_dep_vld_vec_45[2] = dep_chan_vld_50_45;
    assign in_chan_dep_data_vec_45[164 : 110] = dep_chan_data_50_45;
    assign token_in_vec_45[2] = token_50_45;
    assign dep_chan_vld_45_38 = out_chan_dep_vld_vec_45[0];
    assign dep_chan_data_45_38 = out_chan_dep_data_45;
    assign token_45_38 = token_out_vec_45[0];
    assign dep_chan_vld_45_30 = out_chan_dep_vld_vec_45[1];
    assign dep_chan_data_45_30 = out_chan_dep_data_45;
    assign token_45_30 = token_out_vec_45[1];
    assign dep_chan_vld_45_50 = out_chan_dep_vld_vec_45[2];
    assign dep_chan_data_45_50 = out_chan_dep_data_45;
    assign token_45_50 = token_out_vec_45[2];

    // Process: transport_timer_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 46, 3, 3) rocev2_top_hls_deadlock_detect_unit_46 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_46),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_46),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_46),
        .token_in_vec(token_in_vec_46),
        .dl_detect_in(dl_detect_out),
        .origin(origin[46]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_46),
        .out_chan_dep_data(out_chan_dep_data_46),
        .token_out_vec(token_out_vec_46),
        .dl_detect_out(dl_in_vec[46]));

    assign proc_46_data_FIFO_blk[0] = 1'b0 | (~transport_timer_0_U0.rxClearTimer_req_blk_n);
    assign proc_46_data_PIPO_blk[0] = 1'b0;
    assign proc_46_start_FIFO_blk[0] = 1'b0;
    assign proc_46_TLF_FIFO_blk[0] = 1'b0;
    assign proc_46_input_sync_blk[0] = 1'b0;
    assign proc_46_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_46[0] = dl_detect_out ? proc_dep_vld_vec_46_reg[0] : (proc_46_data_FIFO_blk[0] | proc_46_data_PIPO_blk[0] | proc_46_start_FIFO_blk[0] | proc_46_TLF_FIFO_blk[0] | proc_46_input_sync_blk[0] | proc_46_output_sync_blk[0]);
    assign proc_46_data_FIFO_blk[1] = 1'b0 | (~transport_timer_0_U0.txSetTimer_req_blk_n);
    assign proc_46_data_PIPO_blk[1] = 1'b0;
    assign proc_46_start_FIFO_blk[1] = 1'b0;
    assign proc_46_TLF_FIFO_blk[1] = 1'b0;
    assign proc_46_input_sync_blk[1] = 1'b0;
    assign proc_46_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_46[1] = dl_detect_out ? proc_dep_vld_vec_46_reg[1] : (proc_46_data_FIFO_blk[1] | proc_46_data_PIPO_blk[1] | proc_46_start_FIFO_blk[1] | proc_46_TLF_FIFO_blk[1] | proc_46_input_sync_blk[1] | proc_46_output_sync_blk[1]);
    assign proc_46_data_FIFO_blk[2] = 1'b0 | (~transport_timer_0_U0.timer2retrans_req_blk_n);
    assign proc_46_data_PIPO_blk[2] = 1'b0;
    assign proc_46_start_FIFO_blk[2] = 1'b0;
    assign proc_46_TLF_FIFO_blk[2] = 1'b0;
    assign proc_46_input_sync_blk[2] = 1'b0;
    assign proc_46_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_46[2] = dl_detect_out ? proc_dep_vld_vec_46_reg[2] : (proc_46_data_FIFO_blk[2] | proc_46_data_PIPO_blk[2] | proc_46_start_FIFO_blk[2] | proc_46_TLF_FIFO_blk[2] | proc_46_input_sync_blk[2] | proc_46_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_46_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_46_reg <= proc_dep_vld_vec_46;
        end
    end
    assign in_chan_dep_vld_vec_46[0] = dep_chan_vld_20_46;
    assign in_chan_dep_data_vec_46[54 : 0] = dep_chan_data_20_46;
    assign token_in_vec_46[0] = token_20_46;
    assign in_chan_dep_vld_vec_46[1] = dep_chan_vld_35_46;
    assign in_chan_dep_data_vec_46[109 : 55] = dep_chan_data_35_46;
    assign token_in_vec_46[1] = token_35_46;
    assign in_chan_dep_vld_vec_46[2] = dep_chan_vld_50_46;
    assign in_chan_dep_data_vec_46[164 : 110] = dep_chan_data_50_46;
    assign token_in_vec_46[2] = token_50_46;
    assign dep_chan_vld_46_20 = out_chan_dep_vld_vec_46[0];
    assign dep_chan_data_46_20 = out_chan_dep_data_46;
    assign token_46_20 = token_out_vec_46[0];
    assign dep_chan_vld_46_35 = out_chan_dep_vld_vec_46[1];
    assign dep_chan_data_46_35 = out_chan_dep_data_46;
    assign token_46_35 = token_out_vec_46[1];
    assign dep_chan_vld_46_50 = out_chan_dep_vld_vec_46[2];
    assign dep_chan_data_46_50 = out_chan_dep_data_46;
    assign token_46_50 = token_out_vec_46[2];

    // Process: freelist_handler_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 47, 1, 1) rocev2_top_hls_deadlock_detect_unit_47 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_47),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_47),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_47),
        .token_in_vec(token_in_vec_47),
        .dl_detect_in(dl_detect_out),
        .origin(origin[47]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_47),
        .out_chan_dep_data(out_chan_dep_data_47),
        .token_out_vec(token_out_vec_47),
        .dl_detect_out(dl_in_vec[47]));

    assign proc_47_data_FIFO_blk[0] = 1'b0 | (~freelist_handler_0_U0.rt_releaseFifo_blk_n) | (~freelist_handler_0_U0.rt_freeListFifo_blk_n);
    assign proc_47_data_PIPO_blk[0] = 1'b0;
    assign proc_47_start_FIFO_blk[0] = 1'b0;
    assign proc_47_TLF_FIFO_blk[0] = 1'b0;
    assign proc_47_input_sync_blk[0] = 1'b0;
    assign proc_47_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_47[0] = dl_detect_out ? proc_dep_vld_vec_47_reg[0] : (proc_47_data_FIFO_blk[0] | proc_47_data_PIPO_blk[0] | proc_47_start_FIFO_blk[0] | proc_47_TLF_FIFO_blk[0] | proc_47_input_sync_blk[0] | proc_47_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_47_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_47_reg <= proc_dep_vld_vec_47;
        end
    end
    assign in_chan_dep_vld_vec_47[0] = dep_chan_vld_50_47;
    assign in_chan_dep_data_vec_47[54 : 0] = dep_chan_data_50_47;
    assign token_in_vec_47[0] = token_50_47;
    assign dep_chan_vld_47_50 = out_chan_dep_vld_vec_47[0];
    assign dep_chan_data_47_50 = out_chan_dep_data_47;
    assign token_47_50 = token_out_vec_47[0];

    // Process: retrans_pointer_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 48, 2, 2) rocev2_top_hls_deadlock_detect_unit_48 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_48),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_48),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_48),
        .token_in_vec(token_in_vec_48),
        .dl_detect_in(dl_detect_out),
        .origin(origin[48]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_48),
        .out_chan_dep_data(out_chan_dep_data_48),
        .token_out_vec(token_out_vec_48),
        .dl_detect_out(dl_in_vec[48]));

    assign proc_48_data_FIFO_blk[0] = 1'b0 | (~retrans_pointer_table_0_U0.qpif2retransPointerInit_blk_n);
    assign proc_48_data_PIPO_blk[0] = 1'b0;
    assign proc_48_start_FIFO_blk[0] = 1'b0;
    assign proc_48_TLF_FIFO_blk[0] = 1'b0;
    assign proc_48_input_sync_blk[0] = 1'b0;
    assign proc_48_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_48[0] = dl_detect_out ? proc_dep_vld_vec_48_reg[0] : (proc_48_data_FIFO_blk[0] | proc_48_data_PIPO_blk[0] | proc_48_start_FIFO_blk[0] | proc_48_TLF_FIFO_blk[0] | proc_48_input_sync_blk[0] | proc_48_output_sync_blk[0]);
    assign proc_48_data_FIFO_blk[1] = 1'b0 | (~retrans_pointer_table_0_U0.rt_pointerUpdFifo_blk_n) | (~retrans_pointer_table_0_U0.rt_pointerReqFifo_blk_n) | (~retrans_pointer_table_0_U0.rt_pointerRspFifo_blk_n);
    assign proc_48_data_PIPO_blk[1] = 1'b0;
    assign proc_48_start_FIFO_blk[1] = 1'b0;
    assign proc_48_TLF_FIFO_blk[1] = 1'b0;
    assign proc_48_input_sync_blk[1] = 1'b0;
    assign proc_48_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_48[1] = dl_detect_out ? proc_dep_vld_vec_48_reg[1] : (proc_48_data_FIFO_blk[1] | proc_48_data_PIPO_blk[1] | proc_48_start_FIFO_blk[1] | proc_48_TLF_FIFO_blk[1] | proc_48_input_sync_blk[1] | proc_48_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_48_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_48_reg <= proc_dep_vld_vec_48;
        end
    end
    assign in_chan_dep_vld_vec_48[0] = dep_chan_vld_15_48;
    assign in_chan_dep_data_vec_48[54 : 0] = dep_chan_data_15_48;
    assign token_in_vec_48[0] = token_15_48;
    assign in_chan_dep_vld_vec_48[1] = dep_chan_vld_50_48;
    assign in_chan_dep_data_vec_48[109 : 55] = dep_chan_data_50_48;
    assign token_in_vec_48[1] = token_50_48;
    assign dep_chan_vld_48_15 = out_chan_dep_vld_vec_48[0];
    assign dep_chan_data_48_15 = out_chan_dep_data_48;
    assign token_48_15 = token_out_vec_48[0];
    assign dep_chan_vld_48_50 = out_chan_dep_vld_vec_48[1];
    assign dep_chan_data_48_50 = out_chan_dep_data_48;
    assign token_48_50 = token_out_vec_48[1];

    // Process: retrans_meta_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 49, 1, 1) rocev2_top_hls_deadlock_detect_unit_49 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_49),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_49),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_49),
        .token_in_vec(token_in_vec_49),
        .dl_detect_in(dl_detect_out),
        .origin(origin[49]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_49),
        .out_chan_dep_data(out_chan_dep_data_49),
        .token_out_vec(token_out_vec_49),
        .dl_detect_out(dl_in_vec[49]));

    assign proc_49_data_FIFO_blk[0] = 1'b0 | (~retrans_meta_table_0_U0.rt_metaReqFifo_blk_n) | (~retrans_meta_table_0_U0.rt_metaRspFifo_blk_n);
    assign proc_49_data_PIPO_blk[0] = 1'b0;
    assign proc_49_start_FIFO_blk[0] = 1'b0;
    assign proc_49_TLF_FIFO_blk[0] = 1'b0;
    assign proc_49_input_sync_blk[0] = 1'b0;
    assign proc_49_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_49[0] = dl_detect_out ? proc_dep_vld_vec_49_reg[0] : (proc_49_data_FIFO_blk[0] | proc_49_data_PIPO_blk[0] | proc_49_start_FIFO_blk[0] | proc_49_TLF_FIFO_blk[0] | proc_49_input_sync_blk[0] | proc_49_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_49_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_49_reg <= proc_dep_vld_vec_49;
        end
    end
    assign in_chan_dep_vld_vec_49[0] = dep_chan_vld_50_49;
    assign in_chan_dep_data_vec_49[54 : 0] = dep_chan_data_50_49;
    assign token_in_vec_49[0] = token_50_49;
    assign dep_chan_vld_49_50 = out_chan_dep_vld_vec_49[0];
    assign dep_chan_data_49_50 = out_chan_dep_data_49;
    assign token_49_50 = token_out_vec_49[0];

    // Process: process_retransmissions_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 50, 9, 9) rocev2_top_hls_deadlock_detect_unit_50 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_50),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_50),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_50),
        .token_in_vec(token_in_vec_50),
        .dl_detect_in(dl_detect_out),
        .origin(origin[50]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_50),
        .out_chan_dep_data(out_chan_dep_data_50),
        .token_out_vec(token_out_vec_50),
        .dl_detect_out(dl_in_vec[50]));

    assign proc_50_data_FIFO_blk[0] = 1'b0 | (~process_retransmissions_0_U0.rx2retrans_upd_blk_n);
    assign proc_50_data_PIPO_blk[0] = 1'b0;
    assign proc_50_start_FIFO_blk[0] = 1'b0;
    assign proc_50_TLF_FIFO_blk[0] = 1'b0;
    assign proc_50_input_sync_blk[0] = 1'b0;
    assign proc_50_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_50[0] = dl_detect_out ? proc_dep_vld_vec_50_reg[0] : (proc_50_data_FIFO_blk[0] | proc_50_data_PIPO_blk[0] | proc_50_start_FIFO_blk[0] | proc_50_TLF_FIFO_blk[0] | proc_50_input_sync_blk[0] | proc_50_output_sync_blk[0]);
    assign proc_50_data_FIFO_blk[1] = 1'b0 | (~process_retransmissions_0_U0.rt_pointerReqFifo_blk_n) | (~process_retransmissions_0_U0.rt_pointerRspFifo_blk_n) | (~process_retransmissions_0_U0.rt_pointerUpdFifo_blk_n);
    assign proc_50_data_PIPO_blk[1] = 1'b0;
    assign proc_50_start_FIFO_blk[1] = 1'b0;
    assign proc_50_TLF_FIFO_blk[1] = 1'b0;
    assign proc_50_input_sync_blk[1] = 1'b0;
    assign proc_50_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_50[1] = dl_detect_out ? proc_dep_vld_vec_50_reg[1] : (proc_50_data_FIFO_blk[1] | proc_50_data_PIPO_blk[1] | proc_50_start_FIFO_blk[1] | proc_50_TLF_FIFO_blk[1] | proc_50_input_sync_blk[1] | proc_50_output_sync_blk[1]);
    assign proc_50_data_FIFO_blk[2] = 1'b0 | (~process_retransmissions_0_U0.rx2retrans_req_blk_n) | (~process_retransmissions_0_U0.retrans2rx_init_blk_n);
    assign proc_50_data_PIPO_blk[2] = 1'b0;
    assign proc_50_start_FIFO_blk[2] = 1'b0;
    assign proc_50_TLF_FIFO_blk[2] = 1'b0;
    assign proc_50_input_sync_blk[2] = 1'b0;
    assign proc_50_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_50[2] = dl_detect_out ? proc_dep_vld_vec_50_reg[2] : (proc_50_data_FIFO_blk[2] | proc_50_data_PIPO_blk[2] | proc_50_start_FIFO_blk[2] | proc_50_TLF_FIFO_blk[2] | proc_50_input_sync_blk[2] | proc_50_output_sync_blk[2]);
    assign proc_50_data_FIFO_blk[3] = 1'b0 | (~process_retransmissions_0_U0.timer2retrans_req_blk_n);
    assign proc_50_data_PIPO_blk[3] = 1'b0;
    assign proc_50_start_FIFO_blk[3] = 1'b0;
    assign proc_50_TLF_FIFO_blk[3] = 1'b0;
    assign proc_50_input_sync_blk[3] = 1'b0;
    assign proc_50_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_50[3] = dl_detect_out ? proc_dep_vld_vec_50_reg[3] : (proc_50_data_FIFO_blk[3] | proc_50_data_PIPO_blk[3] | proc_50_start_FIFO_blk[3] | proc_50_TLF_FIFO_blk[3] | proc_50_input_sync_blk[3] | proc_50_output_sync_blk[3]);
    assign proc_50_data_FIFO_blk[4] = 1'b0 | (~process_retransmissions_0_U0.tx2retrans_insertRequest_blk_n);
    assign proc_50_data_PIPO_blk[4] = 1'b0;
    assign proc_50_start_FIFO_blk[4] = 1'b0;
    assign proc_50_TLF_FIFO_blk[4] = 1'b0;
    assign proc_50_input_sync_blk[4] = 1'b0;
    assign proc_50_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_50[4] = dl_detect_out ? proc_dep_vld_vec_50_reg[4] : (proc_50_data_FIFO_blk[4] | proc_50_data_PIPO_blk[4] | proc_50_start_FIFO_blk[4] | proc_50_TLF_FIFO_blk[4] | proc_50_input_sync_blk[4] | proc_50_output_sync_blk[4]);
    assign proc_50_data_FIFO_blk[5] = 1'b0 | (~process_retransmissions_0_U0.rt_freeListFifo_blk_n) | (~process_retransmissions_0_U0.rt_releaseFifo_blk_n);
    assign proc_50_data_PIPO_blk[5] = 1'b0;
    assign proc_50_start_FIFO_blk[5] = 1'b0;
    assign proc_50_TLF_FIFO_blk[5] = 1'b0;
    assign proc_50_input_sync_blk[5] = 1'b0;
    assign proc_50_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_50[5] = dl_detect_out ? proc_dep_vld_vec_50_reg[5] : (proc_50_data_FIFO_blk[5] | proc_50_data_PIPO_blk[5] | proc_50_start_FIFO_blk[5] | proc_50_TLF_FIFO_blk[5] | proc_50_input_sync_blk[5] | proc_50_output_sync_blk[5]);
    assign proc_50_data_FIFO_blk[6] = 1'b0 | (~process_retransmissions_0_U0.rt_metaReqFifo_blk_n) | (~process_retransmissions_0_U0.rt_metaRspFifo_blk_n);
    assign proc_50_data_PIPO_blk[6] = 1'b0;
    assign proc_50_start_FIFO_blk[6] = 1'b0;
    assign proc_50_TLF_FIFO_blk[6] = 1'b0;
    assign proc_50_input_sync_blk[6] = 1'b0;
    assign proc_50_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_50[6] = dl_detect_out ? proc_dep_vld_vec_50_reg[6] : (proc_50_data_FIFO_blk[6] | proc_50_data_PIPO_blk[6] | proc_50_start_FIFO_blk[6] | proc_50_TLF_FIFO_blk[6] | proc_50_input_sync_blk[6] | proc_50_output_sync_blk[6]);
    assign proc_50_data_FIFO_blk[7] = 1'b0 | (~process_retransmissions_0_U0.retrans2cqe_qpn_blk_n);
    assign proc_50_data_PIPO_blk[7] = 1'b0;
    assign proc_50_start_FIFO_blk[7] = 1'b0;
    assign proc_50_TLF_FIFO_blk[7] = 1'b0;
    assign proc_50_input_sync_blk[7] = 1'b0;
    assign proc_50_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_50[7] = dl_detect_out ? proc_dep_vld_vec_50_reg[7] : (proc_50_data_FIFO_blk[7] | proc_50_data_PIPO_blk[7] | proc_50_start_FIFO_blk[7] | proc_50_TLF_FIFO_blk[7] | proc_50_input_sync_blk[7] | proc_50_output_sync_blk[7]);
    assign proc_50_data_FIFO_blk[8] = 1'b0 | (~process_retransmissions_0_U0.retransmitter2exh_eventFifo_blk_n);
    assign proc_50_data_PIPO_blk[8] = 1'b0;
    assign proc_50_start_FIFO_blk[8] = 1'b0;
    assign proc_50_TLF_FIFO_blk[8] = 1'b0;
    assign proc_50_input_sync_blk[8] = 1'b0;
    assign proc_50_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_50[8] = dl_detect_out ? proc_dep_vld_vec_50_reg[8] : (proc_50_data_FIFO_blk[8] | proc_50_data_PIPO_blk[8] | proc_50_start_FIFO_blk[8] | proc_50_TLF_FIFO_blk[8] | proc_50_input_sync_blk[8] | proc_50_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_50_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_50_reg <= proc_dep_vld_vec_50;
        end
    end
    assign in_chan_dep_vld_vec_50[0] = dep_chan_vld_20_50;
    assign in_chan_dep_data_vec_50[54 : 0] = dep_chan_data_20_50;
    assign token_in_vec_50[0] = token_20_50;
    assign in_chan_dep_vld_vec_50[1] = dep_chan_vld_23_50;
    assign in_chan_dep_data_vec_50[109 : 55] = dep_chan_data_23_50;
    assign token_in_vec_50[1] = token_23_50;
    assign in_chan_dep_vld_vec_50[2] = dep_chan_vld_30_50;
    assign in_chan_dep_data_vec_50[164 : 110] = dep_chan_data_30_50;
    assign token_in_vec_50[2] = token_30_50;
    assign in_chan_dep_vld_vec_50[3] = dep_chan_vld_45_50;
    assign in_chan_dep_data_vec_50[219 : 165] = dep_chan_data_45_50;
    assign token_in_vec_50[3] = token_45_50;
    assign in_chan_dep_vld_vec_50[4] = dep_chan_vld_46_50;
    assign in_chan_dep_data_vec_50[274 : 220] = dep_chan_data_46_50;
    assign token_in_vec_50[4] = token_46_50;
    assign in_chan_dep_vld_vec_50[5] = dep_chan_vld_47_50;
    assign in_chan_dep_data_vec_50[329 : 275] = dep_chan_data_47_50;
    assign token_in_vec_50[5] = token_47_50;
    assign in_chan_dep_vld_vec_50[6] = dep_chan_vld_48_50;
    assign in_chan_dep_data_vec_50[384 : 330] = dep_chan_data_48_50;
    assign token_in_vec_50[6] = token_48_50;
    assign in_chan_dep_vld_vec_50[7] = dep_chan_vld_49_50;
    assign in_chan_dep_data_vec_50[439 : 385] = dep_chan_data_49_50;
    assign token_in_vec_50[7] = token_49_50;
    assign in_chan_dep_vld_vec_50[8] = dep_chan_vld_54_50;
    assign in_chan_dep_data_vec_50[494 : 440] = dep_chan_data_54_50;
    assign token_in_vec_50[8] = token_54_50;
    assign dep_chan_vld_50_20 = out_chan_dep_vld_vec_50[0];
    assign dep_chan_data_50_20 = out_chan_dep_data_50;
    assign token_50_20 = token_out_vec_50[0];
    assign dep_chan_vld_50_48 = out_chan_dep_vld_vec_50[1];
    assign dep_chan_data_50_48 = out_chan_dep_data_50;
    assign token_50_48 = token_out_vec_50[1];
    assign dep_chan_vld_50_23 = out_chan_dep_vld_vec_50[2];
    assign dep_chan_data_50_23 = out_chan_dep_data_50;
    assign token_50_23 = token_out_vec_50[2];
    assign dep_chan_vld_50_46 = out_chan_dep_vld_vec_50[3];
    assign dep_chan_data_50_46 = out_chan_dep_data_50;
    assign token_50_46 = token_out_vec_50[3];
    assign dep_chan_vld_50_45 = out_chan_dep_vld_vec_50[4];
    assign dep_chan_data_50_45 = out_chan_dep_data_50;
    assign token_50_45 = token_out_vec_50[4];
    assign dep_chan_vld_50_47 = out_chan_dep_vld_vec_50[5];
    assign dep_chan_data_50_47 = out_chan_dep_data_50;
    assign token_50_47 = token_out_vec_50[5];
    assign dep_chan_vld_50_49 = out_chan_dep_vld_vec_50[6];
    assign dep_chan_data_50_49 = out_chan_dep_data_50;
    assign token_50_49 = token_out_vec_50[6];
    assign dep_chan_vld_50_54 = out_chan_dep_vld_vec_50[7];
    assign dep_chan_data_50_54 = out_chan_dep_data_50;
    assign token_50_54 = token_out_vec_50[7];
    assign dep_chan_vld_50_30 = out_chan_dep_vld_vec_50[8];
    assign dep_chan_data_50_30 = out_chan_dep_data_50;
    assign token_50_30 = token_out_vec_50[8];

    // Process: wqe_freelist_handler_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 51, 1, 1) rocev2_top_hls_deadlock_detect_unit_51 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_51),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_51),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_51),
        .token_in_vec(token_in_vec_51),
        .dl_detect_in(dl_detect_out),
        .origin(origin[51]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_51),
        .out_chan_dep_data(out_chan_dep_data_51),
        .token_out_vec(token_out_vec_51),
        .dl_detect_out(dl_in_vec[51]));

    assign proc_51_data_FIFO_blk[0] = 1'b0 | (~wqe_freelist_handler_0_U0.wqe_releaseFifo_blk_n) | (~wqe_freelist_handler_0_U0.wqe_freeListFifo_blk_n);
    assign proc_51_data_PIPO_blk[0] = 1'b0;
    assign proc_51_start_FIFO_blk[0] = 1'b0;
    assign proc_51_TLF_FIFO_blk[0] = 1'b0;
    assign proc_51_input_sync_blk[0] = 1'b0;
    assign proc_51_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_51[0] = dl_detect_out ? proc_dep_vld_vec_51_reg[0] : (proc_51_data_FIFO_blk[0] | proc_51_data_PIPO_blk[0] | proc_51_start_FIFO_blk[0] | proc_51_TLF_FIFO_blk[0] | proc_51_input_sync_blk[0] | proc_51_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_51_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_51_reg <= proc_dep_vld_vec_51;
        end
    end
    assign in_chan_dep_vld_vec_51[0] = dep_chan_vld_54_51;
    assign in_chan_dep_data_vec_51[54 : 0] = dep_chan_data_54_51;
    assign token_in_vec_51[0] = token_54_51;
    assign dep_chan_vld_51_54 = out_chan_dep_vld_vec_51[0];
    assign dep_chan_data_51_54 = out_chan_dep_data_51;
    assign token_51_54 = token_out_vec_51[0];

    // Process: wqe_pointer_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 52, 2, 2) rocev2_top_hls_deadlock_detect_unit_52 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_52),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_52),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_52),
        .token_in_vec(token_in_vec_52),
        .dl_detect_in(dl_detect_out),
        .origin(origin[52]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_52),
        .out_chan_dep_data(out_chan_dep_data_52),
        .token_out_vec(token_out_vec_52),
        .dl_detect_out(dl_in_vec[52]));

    assign proc_52_data_FIFO_blk[0] = 1'b0 | (~wqe_pointer_table_0_U0.qpif2wqePointerInit_blk_n);
    assign proc_52_data_PIPO_blk[0] = 1'b0;
    assign proc_52_start_FIFO_blk[0] = 1'b0;
    assign proc_52_TLF_FIFO_blk[0] = 1'b0;
    assign proc_52_input_sync_blk[0] = 1'b0;
    assign proc_52_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_52[0] = dl_detect_out ? proc_dep_vld_vec_52_reg[0] : (proc_52_data_FIFO_blk[0] | proc_52_data_PIPO_blk[0] | proc_52_start_FIFO_blk[0] | proc_52_TLF_FIFO_blk[0] | proc_52_input_sync_blk[0] | proc_52_output_sync_blk[0]);
    assign proc_52_data_FIFO_blk[1] = 1'b0 | (~wqe_pointer_table_0_U0.wqe_pointerUpdFifo_blk_n) | (~wqe_pointer_table_0_U0.wqe_pointerReqFifo_blk_n) | (~wqe_pointer_table_0_U0.wqe_pointerRspFifo_blk_n);
    assign proc_52_data_PIPO_blk[1] = 1'b0;
    assign proc_52_start_FIFO_blk[1] = 1'b0;
    assign proc_52_TLF_FIFO_blk[1] = 1'b0;
    assign proc_52_input_sync_blk[1] = 1'b0;
    assign proc_52_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_52[1] = dl_detect_out ? proc_dep_vld_vec_52_reg[1] : (proc_52_data_FIFO_blk[1] | proc_52_data_PIPO_blk[1] | proc_52_start_FIFO_blk[1] | proc_52_TLF_FIFO_blk[1] | proc_52_input_sync_blk[1] | proc_52_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_52_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_52_reg <= proc_dep_vld_vec_52;
        end
    end
    assign in_chan_dep_vld_vec_52[0] = dep_chan_vld_15_52;
    assign in_chan_dep_data_vec_52[54 : 0] = dep_chan_data_15_52;
    assign token_in_vec_52[0] = token_15_52;
    assign in_chan_dep_vld_vec_52[1] = dep_chan_vld_54_52;
    assign in_chan_dep_data_vec_52[109 : 55] = dep_chan_data_54_52;
    assign token_in_vec_52[1] = token_54_52;
    assign dep_chan_vld_52_15 = out_chan_dep_vld_vec_52[0];
    assign dep_chan_data_52_15 = out_chan_dep_data_52;
    assign token_52_15 = token_out_vec_52[0];
    assign dep_chan_vld_52_54 = out_chan_dep_vld_vec_52[1];
    assign dep_chan_data_52_54 = out_chan_dep_data_52;
    assign token_52_54 = token_out_vec_52[1];

    // Process: wqe_meta_table_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 53, 1, 1) rocev2_top_hls_deadlock_detect_unit_53 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_53),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_53),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_53),
        .token_in_vec(token_in_vec_53),
        .dl_detect_in(dl_detect_out),
        .origin(origin[53]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_53),
        .out_chan_dep_data(out_chan_dep_data_53),
        .token_out_vec(token_out_vec_53),
        .dl_detect_out(dl_in_vec[53]));

    assign proc_53_data_FIFO_blk[0] = 1'b0 | (~wqe_meta_table_0_U0.wqe_metaReqFifo_blk_n) | (~wqe_meta_table_0_U0.wqe_metaRspFifo_blk_n);
    assign proc_53_data_PIPO_blk[0] = 1'b0;
    assign proc_53_start_FIFO_blk[0] = 1'b0;
    assign proc_53_TLF_FIFO_blk[0] = 1'b0;
    assign proc_53_input_sync_blk[0] = 1'b0;
    assign proc_53_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_53[0] = dl_detect_out ? proc_dep_vld_vec_53_reg[0] : (proc_53_data_FIFO_blk[0] | proc_53_data_PIPO_blk[0] | proc_53_start_FIFO_blk[0] | proc_53_TLF_FIFO_blk[0] | proc_53_input_sync_blk[0] | proc_53_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_53_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_53_reg <= proc_dep_vld_vec_53;
        end
    end
    assign in_chan_dep_vld_vec_53[0] = dep_chan_vld_54_53;
    assign in_chan_dep_data_vec_53[54 : 0] = dep_chan_data_54_53;
    assign token_in_vec_53[0] = token_54_53;
    assign dep_chan_vld_53_54 = out_chan_dep_vld_vec_53[0];
    assign dep_chan_data_53_54 = out_chan_dep_data_53;
    assign token_53_54 = token_out_vec_53[0];

    // Process: process_wqe_cqe_0_U0
    rocev2_top_hls_deadlock_detect_unit #(55, 54, 7, 7) rocev2_top_hls_deadlock_detect_unit_54 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_54),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_54),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_54),
        .token_in_vec(token_in_vec_54),
        .dl_detect_in(dl_detect_out),
        .origin(origin[54]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_54),
        .out_chan_dep_data(out_chan_dep_data_54),
        .token_out_vec(token_out_vec_54),
        .dl_detect_out(dl_in_vec[54]));

    assign proc_54_data_FIFO_blk[0] = 1'b0 | (~process_wqe_cqe_0_U0.retrans2cqe_qpn_blk_n);
    assign proc_54_data_PIPO_blk[0] = 1'b0;
    assign proc_54_start_FIFO_blk[0] = 1'b0;
    assign proc_54_TLF_FIFO_blk[0] = 1'b0;
    assign proc_54_input_sync_blk[0] = 1'b0;
    assign proc_54_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_54[0] = dl_detect_out ? proc_dep_vld_vec_54_reg[0] : (proc_54_data_FIFO_blk[0] | proc_54_data_PIPO_blk[0] | proc_54_start_FIFO_blk[0] | proc_54_TLF_FIFO_blk[0] | proc_54_input_sync_blk[0] | proc_54_output_sync_blk[0]);
    assign proc_54_data_FIFO_blk[1] = 1'b0 | (~process_wqe_cqe_0_U0.wqecqe2connTable_req_blk_n) | (~process_wqe_cqe_0_U0.connTable2wqecqe_rsp_blk_n);
    assign proc_54_data_PIPO_blk[1] = 1'b0;
    assign proc_54_start_FIFO_blk[1] = 1'b0;
    assign proc_54_TLF_FIFO_blk[1] = 1'b0;
    assign proc_54_input_sync_blk[1] = 1'b0;
    assign proc_54_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_54[1] = dl_detect_out ? proc_dep_vld_vec_54_reg[1] : (proc_54_data_FIFO_blk[1] | proc_54_data_PIPO_blk[1] | proc_54_start_FIFO_blk[1] | proc_54_TLF_FIFO_blk[1] | proc_54_input_sync_blk[1] | proc_54_output_sync_blk[1]);
    assign proc_54_data_FIFO_blk[2] = 1'b0 | (~process_wqe_cqe_0_U0.wqe_pointerReqFifo_blk_n) | (~process_wqe_cqe_0_U0.wqe_pointerRspFifo_blk_n) | (~process_wqe_cqe_0_U0.wqe_pointerUpdFifo_blk_n);
    assign proc_54_data_PIPO_blk[2] = 1'b0;
    assign proc_54_start_FIFO_blk[2] = 1'b0;
    assign proc_54_TLF_FIFO_blk[2] = 1'b0;
    assign proc_54_input_sync_blk[2] = 1'b0;
    assign proc_54_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_54[2] = dl_detect_out ? proc_dep_vld_vec_54_reg[2] : (proc_54_data_FIFO_blk[2] | proc_54_data_PIPO_blk[2] | proc_54_start_FIFO_blk[2] | proc_54_TLF_FIFO_blk[2] | proc_54_input_sync_blk[2] | proc_54_output_sync_blk[2]);
    assign proc_54_data_FIFO_blk[3] = 1'b0 | (~process_wqe_cqe_0_U0.sqMeta2wqetable_blk_n);
    assign proc_54_data_PIPO_blk[3] = 1'b0;
    assign proc_54_start_FIFO_blk[3] = 1'b0;
    assign proc_54_TLF_FIFO_blk[3] = 1'b0;
    assign proc_54_input_sync_blk[3] = 1'b0;
    assign proc_54_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_54[3] = dl_detect_out ? proc_dep_vld_vec_54_reg[3] : (proc_54_data_FIFO_blk[3] | proc_54_data_PIPO_blk[3] | proc_54_start_FIFO_blk[3] | proc_54_TLF_FIFO_blk[3] | proc_54_input_sync_blk[3] | proc_54_output_sync_blk[3]);
    assign proc_54_data_FIFO_blk[4] = 1'b0 | (~process_wqe_cqe_0_U0.wqe_metaReqFifo_blk_n) | (~process_wqe_cqe_0_U0.wqe_metaRspFifo_blk_n);
    assign proc_54_data_PIPO_blk[4] = 1'b0;
    assign proc_54_start_FIFO_blk[4] = 1'b0;
    assign proc_54_TLF_FIFO_blk[4] = 1'b0;
    assign proc_54_input_sync_blk[4] = 1'b0;
    assign proc_54_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_54[4] = dl_detect_out ? proc_dep_vld_vec_54_reg[4] : (proc_54_data_FIFO_blk[4] | proc_54_data_PIPO_blk[4] | proc_54_start_FIFO_blk[4] | proc_54_TLF_FIFO_blk[4] | proc_54_input_sync_blk[4] | proc_54_output_sync_blk[4]);
    assign proc_54_data_FIFO_blk[5] = 1'b0 | (~process_wqe_cqe_0_U0.wqe_releaseFifo_blk_n) | (~process_wqe_cqe_0_U0.wqe_freeListFifo_blk_n);
    assign proc_54_data_PIPO_blk[5] = 1'b0;
    assign proc_54_start_FIFO_blk[5] = 1'b0;
    assign proc_54_TLF_FIFO_blk[5] = 1'b0;
    assign proc_54_input_sync_blk[5] = 1'b0;
    assign proc_54_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_54[5] = dl_detect_out ? proc_dep_vld_vec_54_reg[5] : (proc_54_data_FIFO_blk[5] | proc_54_data_PIPO_blk[5] | proc_54_start_FIFO_blk[5] | proc_54_TLF_FIFO_blk[5] | proc_54_input_sync_blk[5] | proc_54_output_sync_blk[5]);
    assign proc_54_data_FIFO_blk[6] = 1'b0 | (~process_wqe_cqe_0_U0.cqe2CQC_req_blk_n) | (~process_wqe_cqe_0_U0.CQC2cqe_rsp_blk_n) | (~process_wqe_cqe_0_U0.cqe2CQC_upd_blk_n);
    assign proc_54_data_PIPO_blk[6] = 1'b0;
    assign proc_54_start_FIFO_blk[6] = 1'b0;
    assign proc_54_TLF_FIFO_blk[6] = 1'b0;
    assign proc_54_input_sync_blk[6] = 1'b0;
    assign proc_54_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_54[6] = dl_detect_out ? proc_dep_vld_vec_54_reg[6] : (proc_54_data_FIFO_blk[6] | proc_54_data_PIPO_blk[6] | proc_54_start_FIFO_blk[6] | proc_54_TLF_FIFO_blk[6] | proc_54_input_sync_blk[6] | proc_54_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_54_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_54_reg <= proc_dep_vld_vec_54;
        end
    end
    assign in_chan_dep_vld_vec_54[0] = dep_chan_vld_16_54;
    assign in_chan_dep_data_vec_54[54 : 0] = dep_chan_data_16_54;
    assign token_in_vec_54[0] = token_16_54;
    assign in_chan_dep_vld_vec_54[1] = dep_chan_vld_30_54;
    assign in_chan_dep_data_vec_54[109 : 55] = dep_chan_data_30_54;
    assign token_in_vec_54[1] = token_30_54;
    assign in_chan_dep_vld_vec_54[2] = dep_chan_vld_42_54;
    assign in_chan_dep_data_vec_54[164 : 110] = dep_chan_data_42_54;
    assign token_in_vec_54[2] = token_42_54;
    assign in_chan_dep_vld_vec_54[3] = dep_chan_vld_50_54;
    assign in_chan_dep_data_vec_54[219 : 165] = dep_chan_data_50_54;
    assign token_in_vec_54[3] = token_50_54;
    assign in_chan_dep_vld_vec_54[4] = dep_chan_vld_51_54;
    assign in_chan_dep_data_vec_54[274 : 220] = dep_chan_data_51_54;
    assign token_in_vec_54[4] = token_51_54;
    assign in_chan_dep_vld_vec_54[5] = dep_chan_vld_52_54;
    assign in_chan_dep_data_vec_54[329 : 275] = dep_chan_data_52_54;
    assign token_in_vec_54[5] = token_52_54;
    assign in_chan_dep_vld_vec_54[6] = dep_chan_vld_53_54;
    assign in_chan_dep_data_vec_54[384 : 330] = dep_chan_data_53_54;
    assign token_in_vec_54[6] = token_53_54;
    assign dep_chan_vld_54_50 = out_chan_dep_vld_vec_54[0];
    assign dep_chan_data_54_50 = out_chan_dep_data_54;
    assign token_54_50 = token_out_vec_54[0];
    assign dep_chan_vld_54_42 = out_chan_dep_vld_vec_54[1];
    assign dep_chan_data_54_42 = out_chan_dep_data_54;
    assign token_54_42 = token_out_vec_54[1];
    assign dep_chan_vld_54_52 = out_chan_dep_vld_vec_54[2];
    assign dep_chan_data_54_52 = out_chan_dep_data_54;
    assign token_54_52 = token_out_vec_54[2];
    assign dep_chan_vld_54_30 = out_chan_dep_vld_vec_54[3];
    assign dep_chan_data_54_30 = out_chan_dep_data_54;
    assign token_54_30 = token_out_vec_54[3];
    assign dep_chan_vld_54_53 = out_chan_dep_vld_vec_54[4];
    assign dep_chan_data_54_53 = out_chan_dep_data_54;
    assign token_54_53 = token_out_vec_54[4];
    assign dep_chan_vld_54_51 = out_chan_dep_vld_vec_54[5];
    assign dep_chan_data_54_51 = out_chan_dep_data_54;
    assign token_54_51 = token_out_vec_54[5];
    assign dep_chan_vld_54_16 = out_chan_dep_vld_vec_54[6];
    assign dep_chan_data_54_16 = out_chan_dep_data_54;
    assign token_54_16 = token_out_vec_54[6];


`include "rocev2_top_hls_deadlock_report_unit.vh"
