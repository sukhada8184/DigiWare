`timescale 1ns/1ns
`include "bitcounter.v"


module bitCounter_tb;
reg clk;
reg reset;
wire [3:0]A ;

bitCounter UUT(clk,reset,A);

always begin
    clk=~clk;
    #10;
end

initial begin
    $dumpfile("bitCounter_tb.vcd");
    $dumpvars(0,bitCounter_tb);;

    clk=0;
    reset=0;

    reset=1;#50;
    reset=0;#50;
    #300;
   $display("done bhai");
    $finish;
     
end
    
endmodule