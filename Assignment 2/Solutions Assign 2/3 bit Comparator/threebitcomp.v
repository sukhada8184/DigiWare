module threebitcomp (a,b,eq,gt,lt);
    input [2:0] a;
    input [2:0] b;
    output wire eq;  // Equality
    output wire gt;  // Greater than
    output wire lt;   // Less than


    assign eq = (a == b);
    assign gt = (a > b);
    assign lt = (a < b);

endmodule
