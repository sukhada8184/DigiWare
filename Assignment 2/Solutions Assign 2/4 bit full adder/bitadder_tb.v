`timescale 1ns/1ns
`include "bitadder.v"

module bitadder_tb;
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire Cout;
wire [3:0]S;


bitadder UUT(A,B,Cin,Cout,S);

initial begin
    $dumpfile("bitadder_tb.vcd");
    $dumpvars(0,bitadder_tb);
    

    A=4'b1010;
    B=4'b1000;
    Cin=1'b0;
    #10;  
    

    $display("ddone");
end

    
endmodule