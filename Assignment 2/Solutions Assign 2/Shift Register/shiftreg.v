module shiftreg(A,IN,D,CLK);
input[1:0]IN;
input [3:0]A;
output reg [3:0]D;
input CLK;

wire B=1'b0;

always@(posedge CLK)begin
case (IN)
    2'b01: D[3:0]={B,A[3:1]}; //shift right
    2'b10: D[3:0]={A[2:0],B}; //shift left
    2'b00: D[3:0]={A[3:0]}; //remain same
endcase

end
endmodule