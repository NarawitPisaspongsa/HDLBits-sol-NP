module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire p1_3and_abc, p1_3and_def, p2_2and_ab, p2_2and_cd;
    assign p1_3and_abc = p1a & p1b & p1c;
    assign p1_3and_def = p1d & p1e & p1f;
    // output p1y
    assign p1y = p1_3and_abc | p1_3and_def;
    
    assign p2_2and_ab = p2a & p2b;
    assign p2_2and_cd = p2c & p2d;
    // output p2y
    assign p2y = p2_2and_ab | p2_2and_cd;

endmodule

