`timescale 1ns/1ns
`include "jkff.v"

module jkff_tb();
reg [1:0]JK;
reg CLK=0;
wire Q;
wire Qbar;


jkff UUT(JK,CLK,Q,Qbar);
always begin
    CLK=~CLK;#10;
end

initial begin
    $dumpfile("jkff_tb.vcd");
    $dumpvars(0,jkff_tb);

    JK=2'b00;
    #100; 

      JK=2'b01;
    #100;  
    
      JK=2'b10;
    #100; 

      JK=2'b11;
    #100; 
    $finish;
    $display("ddone");
end

    
endmodule