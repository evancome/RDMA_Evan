// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module rocev2_top_wqe_meta_table_0_s_meta_table_opCode_V_RAM_T2P_BRAM_1R1W (
     
    address0, ce0,
    d0, we0, 
    q0, 
     
    reset, clk);

parameter DataWidth = 2;
parameter AddressWidth = 8;
parameter AddressRange = 200;
 
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 

input reset;
input clk;

(* ram_style = "block"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./rocev2_top_wqe_meta_table_0_s_meta_table_opCode_V_RAM_T2P_BRAM_1R1W.dat", ram);
end 

 





//read first
always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
        q0 <= ram[address0];

    end
end 
 
 

endmodule

