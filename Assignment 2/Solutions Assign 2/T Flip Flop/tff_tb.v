`timescale 1ns/1ns
`include "tff.v"

module tff_tb();
reg T;
reg CLK;
wire Q;
wire Qbar;


tff UUT(T,CLK,Q,Qbar);


initial begin
    $dumpfile("tff_tb.vcd");
    $dumpvars(0,tff_tb);

end
initial begin
    CLK=0;
forever begin
     CLK=~CLK;#5;
end   
end
initial begin
    T=1'b0;
    #6; 

    T=1'b1;
    #4;  
    
       
    $finish;
    $display("ddone");
end

    
endmodule