module bitadder(A,B,Cin,Cout,S);
input [3:0]A,B;
input Cin;
output Cout;
output [3:0]S;
wire [3:1]C;

FA U1(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(C[1]));
FA U2(.A(A[1]),.B(B[1]),.Cin(C[1]),.S(S[1]),.Cout(C[2]));
FA U3(.A(A[2]),.B(B[2]),.Cin(C[2]),.S(S[2]),.Cout(C[3]));
FA U4(.A(A[3]),.B(B[3]),.Cin(C[3]),.S(S[3]),.Cout(Cout));


endmodule

module FA (A,B,Cin,S,Cout);
input A,B;
input Cin;
output S,Cout;
assign S=A^B^Cin;
assign Cout=(A&B)|(A&Cin)|(B&Cin);
    
endmodule