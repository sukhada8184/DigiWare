`timescale 1ns/1ns
`include "mooremachine.v"
module mooremachine_tb;
reg clk;
reg inp;
reg rst;
wire out;

initial begin
  clk=1;
forever begin
  clk=~clk;#10;
end
end

mooremachine UUT(clk,rst,inp,out);
initial begin
    $dumpfile("mooremachine_tb.vcd");
    $dumpvars(0,mooremachine_tb);

   inp=1;rst=0;#15;
   inp=1;rst=0;#15;
   inp=0;rst=0;#15;
   inp=1;rst=1;#15;
    $display("done");
    $finish;

end
    
endmodule