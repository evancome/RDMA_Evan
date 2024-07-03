module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/rocev2_top_top.fst");
    $dumpvars(0, rocev2_top_top);
end
endmodule
