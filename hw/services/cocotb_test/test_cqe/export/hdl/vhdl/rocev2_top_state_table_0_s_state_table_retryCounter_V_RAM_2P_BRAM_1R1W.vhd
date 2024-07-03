-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity rocev2_top_state_table_0_s_state_table_retryCounter_V_RAM_2P_BRAM_1R1W is 
    generic(
        MEM_TYPE        : string    := "block"; 
        DataWidth       : integer   := 3; 
        AddressWidth    : integer   := 9;
        AddressRange    : integer   := 500
    ); 
    port (
        address1    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce1         : in std_logic; 
        d1          : in std_logic_vector(DataWidth-1 downto 0); 
        we1         : in std_logic; 
        q1          : out std_logic_vector(DataWidth-1 downto 0);
        reset           : in std_logic; 
        clk             : in std_logic 
    ); 
end entity; 

architecture rtl of rocev2_top_state_table_0_s_state_table_retryCounter_V_RAM_2P_BRAM_1R1W is 

signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);


type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
-- Init 
shared variable ram : mem_array := (
    others=>(others=>'0')); -- 
attribute syn_ramstyle : string;
attribute syn_ramstyle of ram : variable is "block_ram";
attribute ram_style : string;
attribute ram_style of ram : variable is MEM_TYPE;

begin 

 
memory_access_guard_1: process (address1) 
begin
    address1_tmp <= address1;
--synthesis translate_off
    if (CONV_INTEGER(address1) > AddressRange-1) then
        address1_tmp <= (others => '0');
    else 
       address1_tmp <= address1;
    end if;
--synthesis translate_on
end process;   -- 




--  read first
p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1 <= ram(CONV_INTEGER(address1_tmp));
            if (we1 = '1') then 
                ram(CONV_INTEGER(address1_tmp)) := d1; 
            end if; 
        end if;
    end if;
end process;


 

end rtl;
