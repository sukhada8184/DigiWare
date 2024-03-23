`timescale 1ns/1ns
`include "mux.v"

module mux_tb;
reg [1:0]S;
reg [3:0]A;
reg [3:0]B;
reg [3:0]C;
reg [3:0]E;
wire[3:0]D;

mux uut(S,A,B,C,E,D);

initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0,mux_tb);


    S=2'b00;
    A=4'b0001;
    B=4'b0010;
    C=4'b0100;
    E=4'b1000;
    #20;

    S=2'b01;
  A=4'b0001;
    B=4'b0010;
    C=4'b0100;
    E=4'b1000;
    #20;
    S=2'b10;
    A=4'b0001;
    B=4'b0010;
    C=4'b0100;
    E=4'b1000;
    #20;
    S=2'b11;
    A=4'b0001;
    B=4'b0010;
    C=4'b0100;
    E=4'b1000;
    #20;
    $display("DONE");
    
end
    
endmodule