-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity rocev2_top_wqe_meta_table_0_s_meta_table_opCode_V_RAM_T2P_BRAM_1R1W is 
    generic(
        MEM_TYPE        : string    := "block"; 
        DataWidth       : integer   := 2; 
        AddressWidth    : integer   := 8;
        AddressRange    : integer   := 200
    ); 
    port (
        address0    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce0         : in std_logic; 
        d0          : in std_logic_vector(DataWidth-1 downto 0); 
        we0         : in std_logic; 
        q0          : out std_logic_vector(DataWidth-1 downto 0);
        reset           : in std_logic; 
        clk             : in std_logic 
    ); 
end entity; 

architecture rtl of rocev2_top_wqe_meta_table_0_s_meta_table_opCode_V_RAM_T2P_BRAM_1R1W is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);


type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
-- Init 
shared variable ram : mem_array := (
    0 => "01", 1 => "01", 2 => "01", 3 => "01", 
    4 => "01", 5 => "01", 6 => "01", 7 => "01", 
    8 => "01", 9 => "01", 10 => "01", 11 => "01", 
    12 => "01", 13 => "01", 14 => "01", 15 => "01", 
    16 => "01", 17 => "01", 18 => "01", 19 => "01", 
    20 => "01", 21 => "01", 22 => "01", 23 => "01", 
    24 => "01", 25 => "01", 26 => "01", 27 => "01", 
    28 => "01", 29 => "01", 30 => "01", 31 => "01", 
    32 => "01", 33 => "01", 34 => "01", 35 => "01", 
    36 => "01", 37 => "01", 38 => "01", 39 => "01", 
    40 => "01", 41 => "01", 42 => "01", 43 => "01", 
    44 => "01", 45 => "01", 46 => "01", 47 => "01", 
    48 => "01", 49 => "01", 50 => "01", 51 => "01", 
    52 => "01", 53 => "01", 54 => "01", 55 => "01", 
    56 => "01", 57 => "01", 58 => "01", 59 => "01", 
    60 => "01", 61 => "01", 62 => "01", 63 => "01", 
    64 => "01", 65 => "01", 66 => "01", 67 => "01", 
    68 => "01", 69 => "01", 70 => "01", 71 => "01", 
    72 => "01", 73 => "01", 74 => "01", 75 => "01", 
    76 => "01", 77 => "01", 78 => "01", 79 => "01", 
    80 => "01", 81 => "01", 82 => "01", 83 => "01", 
    84 => "01", 85 => "01", 86 => "01", 87 => "01", 
    88 => "01", 89 => "01", 90 => "01", 91 => "01", 
    92 => "01", 93 => "01", 94 => "01", 95 => "01", 
    96 => "01", 97 => "01", 98 => "01", 99 => "01", 
    100 => "01", 101 => "01", 102 => "01", 103 => "01", 
    104 => "01", 105 => "01", 106 => "01", 107 => "01", 
    108 => "01", 109 => "01", 110 => "01", 111 => "01", 
    112 => "01", 113 => "01", 114 => "01", 115 => "01", 
    116 => "01", 117 => "01", 118 => "01", 119 => "01", 
    120 => "01", 121 => "01", 122 => "01", 123 => "01", 
    124 => "01", 125 => "01", 126 => "01", 127 => "01", 
    128 => "01", 129 => "01", 130 => "01", 131 => "01", 
    132 => "01", 133 => "01", 134 => "01", 135 => "01", 
    136 => "01", 137 => "01", 138 => "01", 139 => "01", 
    140 => "01", 141 => "01", 142 => "01", 143 => "01", 
    144 => "01", 145 => "01", 146 => "01", 147 => "01", 
    148 => "01", 149 => "01", 150 => "01", 151 => "01", 
    152 => "01", 153 => "01", 154 => "01", 155 => "01", 
    156 => "01", 157 => "01", 158 => "01", 159 => "01", 
    160 => "01", 161 => "01", 162 => "01", 163 => "01", 
    164 => "01", 165 => "01", 166 => "01", 167 => "01", 
    168 => "01", 169 => "01", 170 => "01", 171 => "01", 
    172 => "01", 173 => "01", 174 => "01", 175 => "01", 
    176 => "01", 177 => "01", 178 => "01", 179 => "01", 
    180 => "01", 181 => "01", 182 => "01", 183 => "01", 
    184 => "01", 185 => "01", 186 => "01", 187 => "01", 
    188 => "01", 189 => "01", 190 => "01", 191 => "01", 
    192 => "01", 193 => "01", 194 => "01", 195 => "01", 
    196 => "01", 197 => "01", 198 => "01", 199 => "01"); -- 
attribute syn_ramstyle : string;
attribute syn_ramstyle of ram : variable is "block_ram";
attribute ram_style : string;
attribute ram_style of ram : variable is MEM_TYPE;

begin 


memory_access_guard_0: process (address0) 
begin
    address0_tmp <= address0;
--synthesis translate_off
    if (CONV_INTEGER(address0) > AddressRange-1) then
        address0_tmp <= (others => '0');
    else 
       address0_tmp <= address0;
    end if;
--synthesis translate_on
end process;   -- 




--  read first
p_memory_access_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= ram(CONV_INTEGER(address0_tmp));
            if (we0 = '1') then 
                ram(CONV_INTEGER(address0_tmp)) := d0; 
            end if; 
        end if;
    end if;
end process;


 

end rtl;
