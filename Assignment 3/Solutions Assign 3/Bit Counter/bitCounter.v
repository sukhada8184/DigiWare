module bitCounter(clk,reset,A);
input clk;
input reset;
output reg [3:0]A;

always @(posedge clk ) begin
    if(reset)begin
        A=4'b0000;
    end   
    else begin
        A=A+4'b0001;
    end
end
endmodule