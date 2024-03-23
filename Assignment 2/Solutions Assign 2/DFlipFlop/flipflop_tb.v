`timescale 1ns/1ns
`include "flipflop.v"
module flipflop_tb ();
reg  D,CLK=1;
wire Q;

flipflop UUT(D,CLK,Q);
always begin
    CLK=~CLK;#10;
end

initial begin
    $dumpfile("flipflop_tb.vcd");
    $dumpvars(0,flipflop_tb);
    D=0;#15;
    D=1;#15;
    D=0;#15;
    D=1;#15;
    D=0;#15;
    D=1;#15;
    $finish;
end
    
endmodule