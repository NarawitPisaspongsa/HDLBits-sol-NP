`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    
    wire a_and_b, c_and_d, inter_out;
    assign a_and_b = a&&b;
    assign c_and_d = c&&d;
    assign inter_out = a_and_b || c_and_d;
    assign {out, out_n} = {inter_out, ~inter_out};

endmodule
