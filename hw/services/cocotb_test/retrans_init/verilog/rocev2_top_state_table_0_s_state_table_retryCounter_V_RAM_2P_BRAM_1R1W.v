// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module rocev2_top_state_table_0_s_state_table_retryCounter_V_RAM_2P_BRAM_1R1W (address1, ce1, d1, we1, q1,  reset,clk);

parameter DataWidth = 3;
parameter AddressWidth = 9;
parameter AddressRange = 500;

input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

(* ram_style = "block" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./rocev2_top_state_table_0_s_state_table_retryCounter_V_RAM_2P_BRAM_1R1W.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
        q1 <= ram[address1];
    end
end


endmodule
