module add (in1, in2, out);
    input [3:0] in1;
    input [3:0] in2;
    output wire[7:0] out;
    assign out=in1+in2;
endmodule