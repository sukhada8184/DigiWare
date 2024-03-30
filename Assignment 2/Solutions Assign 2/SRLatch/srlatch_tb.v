`timescale 1ns/1ns
`include "srlatch.v"
module srlatch_tb ();
reg  [1:0]SR;
reg CLK=1;
wire Q,Qbar;

srlatch UUT(SR,CLK,Q,Qbar);
always begin
    CLK=~CLK;#10;
end

initial begin
    $dumpfile("srlatch_tb.vcd");
    $dumpvars(0,srlatch_tb);
    SR=2'b00;#10;
    SR=2'b01;#10;
    SR=2'b10;#10;
    SR=2'b11;#10;
    $display("is done");
    $finish;
end
    
endmodule
