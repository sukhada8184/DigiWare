module tff (T,CLK,Q,RESET);
input T,RESET;
reg CLK;
output reg Q;
initial Q=1'b0;
always @(posedge CLK or posedge RESET) begin
  if(RESET) Q<=1'b0;
  else if(T) Q=~Q;
   
  Qbar=~Q;
end   
endmodule



