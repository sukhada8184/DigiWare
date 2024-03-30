module bcdcounter(clk,rst,q,ena);
input clk;
input rst;
output [15:0]q;
output reg [3:1]ena;

BCD_counter U0(.clk(clk),.rst(rst),.enable(1'b1),.q(q[3:0]));
BCD_counter U1(.clk(clk),.rst(rst),.enable(1'b1),.q(q[7:4]));
BCD_counter U2(.clk(clk),.rst(rst),.enable(1'b1),.q(q[11:8]));
BCD_counter U3(.clk(clk),.rst(rst),.enable(1'b1),.q(q[15:12]));

assign ena[1]=(q[3:0]==9);
assign ena[2]=((q[7:4]==9)&(q[3:0]==9));
assign ena[3]=((q[11:8]==9)&(q[7:4]==9)&(q[3:0]));

endmodule

module BCD_counter (
    input clk,
    input rst,
    input enable,
    output reg [3:0]q);
    always @(posedge clk ) begin
        if(rst) q<=0;
        else begin
            if (enable) begin
                if (q<4'd9) 
                q<=q+4'd1;    
                else q<=4'd0;
            end
        end
        
    end
endmodule
