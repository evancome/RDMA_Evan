-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rocev2_top_ipv4_lshiftWordByOctet_512_2_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tx_udp2ipFifo_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    tx_udp2ipFifo_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    tx_udp2ipFifo_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    tx_udp2ipFifo_empty_n : IN STD_LOGIC;
    tx_udp2ipFifo_read : OUT STD_LOGIC;
    tx_shift2ipv4Fifo_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    tx_shift2ipv4Fifo_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    tx_shift2ipv4Fifo_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    tx_shift2ipv4Fifo_full_n : IN STD_LOGIC;
    tx_shift2ipv4Fifo_write : OUT STD_LOGIC );
end;


architecture behav of rocev2_top_ipv4_lshiftWordByOctet_512_2_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";
    constant ap_const_lv32_23F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000111111";
    constant ap_const_lv1024_lc_1 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000";
    constant ap_const_lv32_22B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101011";
    constant ap_const_lv32_22C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101100";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv160_lc_3 : STD_LOGIC_VECTOR (159 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv20_FFFFF : STD_LOGIC_VECTOR (19 downto 0) := "11111111111111111111";
    constant ap_const_lv45_100000000000 : STD_LOGIC_VECTOR (44 downto 0) := "100000000000000000000000000000000000000000000";
    constant ap_const_lv352_lc_3 : STD_LOGIC_VECTOR (351 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ls_writeRemainder_4_load_load_fu_144_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_260_i_nbreadreq_fu_84_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op18_read_state1 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ls_writeRemainder_4_load_reg_327 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_260_i_reg_331 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op47_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ls_writeRemainder_4 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_5 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord_4 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal tx_shift2ipv4Fifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tx_udp2ipFifo_blk_n : STD_LOGIC;
    signal reg_136 : STD_LOGIC_VECTOR (159 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal reg_140 : STD_LOGIC_VECTOR (19 downto 0);
    signal trunc_ln628_fu_180_p1 : STD_LOGIC_VECTOR (351 downto 0);
    signal trunc_ln628_reg_338 : STD_LOGIC_VECTOR (351 downto 0);
    signal tmp_262_i7_reg_344 : STD_LOGIC_VECTOR (43 downto 0);
    signal sendWord_last_V_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_350 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_ls_firstWord_4_new_0_i_reg_105 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105 : STD_LOGIC_VECTOR (0 downto 0);
    signal currWord_last_V_fu_172_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln901_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal currWord_data_V_fu_158_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal zext_ln1231_fu_299_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln1198_fu_322_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_263_i8_fu_194_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_s_fu_244_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_21_fu_258_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_20_fu_251_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_22_fu_265_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln1212_fu_280_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_10_fu_272_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln1231_1_i_fu_288_p5 : STD_LOGIC_VECTOR (577 downto 0);
    signal zext_ln1198_cast_fu_310_p5 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_131 : BOOLEAN;
    signal ap_condition_135 : BOOLEAN;
    signal ap_condition_110 : BOOLEAN;
    signal ap_condition_156 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_110)) then
                if ((ap_const_boolean_1 = ap_condition_135)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_131)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105 <= ap_phi_reg_pp0_iter0_ls_firstWord_4_new_0_i_reg_105;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_4_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_110)) then
                if ((ls_writeRemainder_4_load_load_fu_144_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder_4 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_131)) then 
                    ls_writeRemainder_4 <= xor_ln901_fu_222_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_260_i_reg_331 = ap_const_lv1_1) and (ls_writeRemainder_4_load_reg_327 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_firstWord_4 <= ap_phi_reg_pp0_iter1_ls_firstWord_4_new_0_i_reg_105;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_4_load_reg_327 <= ls_writeRemainder_4;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_5 <= currWord_data_V_fu_158_p1;
                prevWord_keep_V_2 <= tx_udp2ipFifo_dout(575 downto 512);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_4_load_load_fu_144_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then
                reg_136 <= prevWord_data_V_5(511 downto 352);
                reg_140 <= prevWord_keep_V_2(63 downto 44);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                sendWord_last_V_reg_350 <= sendWord_last_V_fu_204_p2;
                tmp_262_i7_reg_344 <= tx_udp2ipFifo_dout(555 downto 512);
                trunc_ln628_reg_338 <= trunc_ln628_fu_180_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_260_i_reg_331 <= tmp_260_i_nbreadreq_fu_84_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, tx_udp2ipFifo_empty_n, ap_predicate_op18_read_state1, ap_done_reg, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op47_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op18_read_state1 = ap_const_boolean_1) and (tx_udp2ipFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, tx_udp2ipFifo_empty_n, ap_predicate_op18_read_state1, ap_done_reg, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op47_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op18_read_state1 = ap_const_boolean_1) and (tx_udp2ipFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, tx_udp2ipFifo_empty_n, ap_predicate_op18_read_state1, ap_done_reg, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op47_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op18_read_state1 = ap_const_boolean_1) and (tx_udp2ipFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(tx_udp2ipFifo_empty_n, ap_predicate_op18_read_state1, ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op18_read_state1 = ap_const_boolean_1) and (tx_udp2ipFifo_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(tx_shift2ipv4Fifo_full_n, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op47_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)));
    end process;


    ap_condition_110_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_110 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_131_assign_proc : process(tmp_260_i_nbreadreq_fu_84_p3, ls_writeRemainder_4, currWord_last_V_fu_172_p3)
    begin
                ap_condition_131 <= ((tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0) and (currWord_last_V_fu_172_p3 = ap_const_lv1_1));
    end process;


    ap_condition_135_assign_proc : process(tmp_260_i_nbreadreq_fu_84_p3, ls_writeRemainder_4, currWord_last_V_fu_172_p3)
    begin
                ap_condition_135 <= ((tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0) and (currWord_last_V_fu_172_p3 = ap_const_lv1_0));
    end process;


    ap_condition_156_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_156 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_done_reg, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_ls_firstWord_4_new_0_i_reg_105 <= "X";

    ap_predicate_op18_read_state1_assign_proc : process(tmp_260_i_nbreadreq_fu_84_p3, ls_writeRemainder_4)
    begin
                ap_predicate_op18_read_state1 <= ((tmp_260_i_nbreadreq_fu_84_p3 = ap_const_lv1_1) and (ls_writeRemainder_4 = ap_const_lv1_0));
    end process;


    ap_predicate_op47_write_state2_assign_proc : process(ls_writeRemainder_4_load_reg_327, tmp_260_i_reg_331)
    begin
                ap_predicate_op47_write_state2 <= ((tmp_260_i_reg_331 = ap_const_lv1_1) and (ls_writeRemainder_4_load_reg_327 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    currWord_data_V_fu_158_p1 <= tx_udp2ipFifo_dout(512 - 1 downto 0);
    currWord_last_V_fu_172_p3 <= tx_udp2ipFifo_dout(576 downto 576);
    ls_writeRemainder_4_load_load_fu_144_p1 <= ls_writeRemainder_4;
    or_ln1231_1_i_fu_288_p5 <= (((ap_const_lv1_0 & sendWord_last_V_reg_350) & select_ln1212_fu_280_p3) & sendWord_data_V_10_fu_272_p3);
    p_Result_20_fu_251_p3 <= (tmp_262_i7_reg_344 & ap_const_lv20_FFFFF);
    p_Result_21_fu_258_p3 <= (trunc_ln628_reg_338 & reg_136);
    p_Result_22_fu_265_p3 <= (tmp_262_i7_reg_344 & reg_140);
    p_Result_s_fu_244_p3 <= (trunc_ln628_reg_338 & ap_const_lv160_lc_3);
    select_ln1212_fu_280_p3 <= 
        p_Result_20_fu_251_p3 when (ls_firstWord_4(0) = '1') else 
        p_Result_22_fu_265_p3;
    sendWord_data_V_10_fu_272_p3 <= 
        p_Result_s_fu_244_p3 when (ls_firstWord_4(0) = '1') else 
        p_Result_21_fu_258_p3;
    sendWord_last_V_fu_204_p2 <= "1" when (tmp_263_i8_fu_194_p4 = ap_const_lv20_0) else "0";
    tmp_260_i_nbreadreq_fu_84_p3 <= (0=>(tx_udp2ipFifo_empty_n), others=>'-');
    tmp_263_i8_fu_194_p4 <= tx_udp2ipFifo_dout(575 downto 556);
    trunc_ln628_fu_180_p1 <= tx_udp2ipFifo_dout(352 - 1 downto 0);

    tx_shift2ipv4Fifo_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op47_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_blk_n <= tx_shift2ipv4Fifo_full_n;
        else 
            tx_shift2ipv4Fifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_shift2ipv4Fifo_din_assign_proc : process(ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2, zext_ln1231_fu_299_p1, zext_ln1198_fu_322_p1, ap_condition_156)
    begin
        if ((ap_const_boolean_1 = ap_condition_156)) then
            if ((ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1)) then 
                tx_shift2ipv4Fifo_din <= zext_ln1198_fu_322_p1;
            elsif ((ap_predicate_op47_write_state2 = ap_const_boolean_1)) then 
                tx_shift2ipv4Fifo_din <= zext_ln1231_fu_299_p1;
            else 
                tx_shift2ipv4Fifo_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            tx_shift2ipv4Fifo_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    tx_shift2ipv4Fifo_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_4_load_reg_327, ap_predicate_op47_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_4_load_reg_327 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op47_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_write <= ap_const_logic_1;
        else 
            tx_shift2ipv4Fifo_write <= ap_const_logic_0;
        end if; 
    end process;


    tx_udp2ipFifo_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tx_udp2ipFifo_empty_n, ap_predicate_op18_read_state1, ap_done_reg, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (ap_predicate_op18_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tx_udp2ipFifo_blk_n <= tx_udp2ipFifo_empty_n;
        else 
            tx_udp2ipFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_udp2ipFifo_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op18_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op18_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tx_udp2ipFifo_read <= ap_const_logic_1;
        else 
            tx_udp2ipFifo_read <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln901_fu_222_p2 <= (sendWord_last_V_fu_204_p2 xor ap_const_lv1_1);
    zext_ln1198_cast_fu_310_p5 <= (((ap_const_lv45_100000000000 & reg_140) & ap_const_lv352_lc_3) & reg_136);
    zext_ln1198_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln1198_cast_fu_310_p5),1024));
    zext_ln1231_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln1231_1_i_fu_288_p5),1024));
end behav;
