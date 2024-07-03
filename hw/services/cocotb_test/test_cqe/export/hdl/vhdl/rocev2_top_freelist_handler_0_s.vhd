-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rocev2_top_freelist_handler_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rt_releaseFifo_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    rt_releaseFifo_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    rt_releaseFifo_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    rt_releaseFifo_empty_n : IN STD_LOGIC;
    rt_releaseFifo_read : OUT STD_LOGIC;
    rt_freeListFifo_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    rt_freeListFifo_num_data_valid : IN STD_LOGIC_VECTOR (11 downto 0);
    rt_freeListFifo_fifo_cap : IN STD_LOGIC_VECTOR (11 downto 0);
    rt_freeListFifo_full_n : IN STD_LOGIC;
    rt_freeListFifo_write : OUT STD_LOGIC );
end;


architecture behav of rocev2_top_freelist_handler_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_7D0 : STD_LOGIC_VECTOR (10 downto 0) := "11111010000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal tmp_i_nbreadreq_fu_36_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_i_reg_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1027_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_317_nbwritereq_fu_50_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op23_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal freeListCounter_V_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    signal rt_releaseFifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rt_freeListFifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal rt_releaseFifo_read_reg_96 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln840_fu_80_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln1027_fu_69_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_117 : BOOLEAN;
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


    freeListCounter_V_1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                freeListCounter_V_1 <= ap_const_lv11_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_317_nbwritereq_fu_50_p3 = ap_const_lv1_1) and (icmp_ln1027_fu_74_p2 = ap_const_lv1_1) and (tmp_i_reg_92 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    freeListCounter_V_1 <= add_ln840_fu_80_p2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                rt_releaseFifo_read_reg_96 <= rt_releaseFifo_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_i_reg_92 <= tmp_i_nbreadreq_fu_36_p3;
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
    add_ln840_fu_80_p2 <= std_logic_vector(unsigned(freeListCounter_V_1) + unsigned(ap_const_lv11_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, rt_releaseFifo_empty_n, tmp_i_nbreadreq_fu_36_p3, ap_done_reg, rt_freeListFifo_full_n, tmp_i_reg_92, ap_predicate_op23_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_i_reg_92 = ap_const_lv1_1) and (rt_freeListFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op23_write_state2 = ap_const_boolean_1) and (rt_freeListFifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (rt_releaseFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, rt_releaseFifo_empty_n, tmp_i_nbreadreq_fu_36_p3, ap_done_reg, rt_freeListFifo_full_n, tmp_i_reg_92, ap_predicate_op23_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_i_reg_92 = ap_const_lv1_1) and (rt_freeListFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op23_write_state2 = ap_const_boolean_1) and (rt_freeListFifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (rt_releaseFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, rt_releaseFifo_empty_n, tmp_i_nbreadreq_fu_36_p3, ap_done_reg, rt_freeListFifo_full_n, tmp_i_reg_92, ap_predicate_op23_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_i_reg_92 = ap_const_lv1_1) and (rt_freeListFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op23_write_state2 = ap_const_boolean_1) and (rt_freeListFifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (rt_releaseFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(rt_releaseFifo_empty_n, tmp_i_nbreadreq_fu_36_p3, ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (rt_releaseFifo_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(rt_freeListFifo_full_n, tmp_i_reg_92, ap_predicate_op23_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((tmp_i_reg_92 = ap_const_lv1_1) and (rt_freeListFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op23_write_state2 = ap_const_boolean_1) and (rt_freeListFifo_full_n = ap_const_logic_0)));
    end process;


    ap_condition_117_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_117 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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


    ap_predicate_op23_write_state2_assign_proc : process(tmp_i_reg_92, icmp_ln1027_fu_74_p2, tmp_i_317_nbwritereq_fu_50_p3)
    begin
                ap_predicate_op23_write_state2 <= ((tmp_i_317_nbwritereq_fu_50_p3 = ap_const_lv1_1) and (icmp_ln1027_fu_74_p2 = ap_const_lv1_1) and (tmp_i_reg_92 = ap_const_lv1_0));
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

    icmp_ln1027_fu_74_p2 <= "1" when (unsigned(freeListCounter_V_1) < unsigned(ap_const_lv11_7D0)) else "0";

    rt_freeListFifo_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rt_freeListFifo_full_n, tmp_i_reg_92, ap_predicate_op23_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (tmp_i_reg_92 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            rt_freeListFifo_blk_n <= rt_freeListFifo_full_n;
        else 
            rt_freeListFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rt_freeListFifo_din_assign_proc : process(tmp_i_reg_92, ap_predicate_op23_write_state2, rt_releaseFifo_read_reg_96, zext_ln1027_fu_69_p1, ap_condition_117)
    begin
        if ((ap_const_boolean_1 = ap_condition_117)) then
            if ((tmp_i_reg_92 = ap_const_lv1_1)) then 
                rt_freeListFifo_din <= rt_releaseFifo_read_reg_96;
            elsif ((ap_predicate_op23_write_state2 = ap_const_boolean_1)) then 
                rt_freeListFifo_din <= zext_ln1027_fu_69_p1;
            else 
                rt_freeListFifo_din <= "XXXXXXXXXXXXXXXX";
            end if;
        else 
            rt_freeListFifo_din <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    rt_freeListFifo_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_i_reg_92, ap_predicate_op23_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_reg_92 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op23_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            rt_freeListFifo_write <= ap_const_logic_1;
        else 
            rt_freeListFifo_write <= ap_const_logic_0;
        end if; 
    end process;


    rt_releaseFifo_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, rt_releaseFifo_empty_n, tmp_i_nbreadreq_fu_36_p3, ap_done_reg, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rt_releaseFifo_blk_n <= rt_releaseFifo_empty_n;
        else 
            rt_releaseFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rt_releaseFifo_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_i_nbreadreq_fu_36_p3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_36_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rt_releaseFifo_read <= ap_const_logic_1;
        else 
            rt_releaseFifo_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_i_317_nbwritereq_fu_50_p3 <= (0=>rt_freeListFifo_full_n, others=>'-');
    tmp_i_nbreadreq_fu_36_p3 <= (0=>(rt_releaseFifo_empty_n), others=>'-');
    zext_ln1027_fu_69_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(freeListCounter_V_1),16));
end behav;