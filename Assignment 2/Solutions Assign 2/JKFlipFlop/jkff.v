module jkff (JK,CLK,Q,Qbar);
input [1:0]JK;
input CLK;
output reg Q,Qbar;



always@(posedge CLK)
begin
    
    case (JK)
        2'b00:Q=Q;
        2'b01:Q=1'b1;
        2'b10:Q=1'b0;
        2'b11:Q=Qbar; 
        
    endcase
 Qbar=~Q;
end

    
endmodule