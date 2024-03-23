module mux(S,A,B,C,E,D);
    input [1:0]S;
    input [3:0]A;
    input [3:0]B;
    input [3:0]C;
    input [3:0]E;
    output reg [3:0]D;
 
 always@(*) begin
 case(S)
    2'b00 :  D<=A;
    2'b01 : D<=B;
    2'b10 : D<=C; 
    2'b11 :  D<=E;   
 endcase
 end
endmodule