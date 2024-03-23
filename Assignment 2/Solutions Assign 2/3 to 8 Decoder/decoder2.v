module decoder3to8(A,D);
input [2:0]A;
output [7:0]D;
wire [5:0]W;

decoder1to2 U0(.A(A[0]),.D(W[1:0]));
decoder2to4 U1(.A(A[2:1]),.D(W[5:2]));

assign D[7]=W[5]&W[1];
assign D[6]=W[5]&W[0];
assign D[5]=W[4]&W[1];
assign D[4]=W[4]&W[0];
assign D[3]=W[3]&W[1];
assign D[2]=W[3]&W[0];
assign D[1]=W[2]&W[1];
assign D[0]=W[2]&W[0];
endmodule


module decoder2to4(A,D);
input[1:0] A;
output[3:0] D;
wire [3:0]W;

decoder1to2 U0(.A(A[0]),.D(W[3:2]));
decoder1to2 U1(.A(A[1]),.D(W[1:0]));

assign D[0]=W[3]&W[1];
assign D[1]=W[2]&W[1];
assign D[2]=W[3]&W[0];
assign D[3]=W[2]&W[0];
endmodule


module decoder1to2(A,D);
input A;
output [1:0] D;

assign D[0]=~A;
assign D[1]=A;

endmodule