module srlatch (SR,CLK,Q,Qbar);
input [1:0]SR;
input CLK;
output reg Q,Qbar;



always@(posedge CLK)
begin
    
    case (SR)
        2'b00:Q=1'bx;//dont know value
        2'b01:Q=1'b1;//set
        2'b10:Q=1'b0;//reset
        2'b11:Q=1'b0; //11 state not used 
        
    endcase
 Qbar=~Q;
end

    
endmodule