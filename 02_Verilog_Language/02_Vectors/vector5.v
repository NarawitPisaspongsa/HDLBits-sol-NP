module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    wire [4:0] concat_5;
    assign concat_5 = {a,b,c,d,e};
    always @(*) begin
        for (int i=0; i<5; i++)
            out[5*i+:5] = ~{5{concat_5[i]}} ^ concat_5[4:0];
	end

endmodule
