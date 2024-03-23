`timescale 1ns/1ns
`include "threebitcomp.v"

module threebitcomp_tb();
reg [2:0]a;
reg [2:0]b;
wire eq;
wire gt;
wire lt;


threebitcomp UUT(a,b,eq,gt,lt);


initial begin
    $dumpfile("threebitcomp_tb.vcd");
    $dumpvars(0,threebitcomp_tb);
    
    a=3'b000;
    b=3'b011;
    #20;
    
    a=3'b100;
    b=3'b011;
    #20;

    $finish;
    $display("ddone");
end

    
endmodule