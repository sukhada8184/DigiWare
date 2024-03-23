module rotatereg(data,ena,load,q,clk);
input [99:0]data;
input [1:0]ena;
input load;
output reg [99:0]q;
input clk;


reg [99:0]shiftreg;


always@(posedge clk)begin
        if (load) begin
            shiftreg<=data;            
         begin case (ena)
          2'b01: q[99:0]={shiftreg[0],shiftreg[99:1]}; //shift right
          2'b10: q[99:0]={shiftreg[98:0],shiftreg[99]}; //shift left
          2'b00: q=shiftreg; 
          2'b11: q=shiftreg;//remain same
          endcase
         end
        end
end

endmodule

