module mooremachine(clk,rst,inp,out);
input clk;
input inp;
input rst;
output reg out;

reg [1:0]state;

parameter A=2'b01,B=2'b00 ;

initial begin
    state=B;
end

always @(posedge clk or posedge rst) begin

    if (rst) 
        state=B;
    else begin
    case (state)
    2'b00:begin     //B
        if(inp) state<=B;
        else state<=A;
    end
    2'b01:begin     //A
        if(inp) state<=A;
        else state<=B;
    end

    endcase
end
end
 always @(posedge clk, posedge rst) begin
    if(rst) out<=1'b1;
    else if(state==A) out<=1'b0;
    else out<=1'b1;
 end
    


endmodule