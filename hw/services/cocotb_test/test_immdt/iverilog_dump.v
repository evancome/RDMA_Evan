module iverilog_dump();
initial begin
    $dumpfile("rocev2_top_top.fst");
    $dumpvars(0, rocev2_top_top);
end
endmodule
