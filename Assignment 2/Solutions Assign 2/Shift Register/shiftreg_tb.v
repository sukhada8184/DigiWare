`timescale 1ns/1ns
`include "shiftreg.v"
module shiftreg_tb();
reg [3:0]A;
wire[3:0]D;
reg [1:0]IN;
reg CLK;


initial begin
    CLK=0;
forever begin
     CLK=~CLK;#100;
end
end

//reg CLK;
shiftreg UUT(A,IN,D,CLK);
initial begin
    $dumpfile("shiftreg_tb.vcd");
    $dumpvars(0,shiftreg_tb);
    A=8'b1011;
    IN= 2'b01;
    #120;

    A=8'b1011;
    IN= 2'b10;
    #140;
    A=8'b1011;
    IN= 2'b00;
    #150;

    IN= 2'b11;
    #220;
    $display("done");
end
endmodule