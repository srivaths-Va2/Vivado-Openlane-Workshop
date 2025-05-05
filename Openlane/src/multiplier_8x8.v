module multiplier_8x8(
    input clk,
    input [7 : 0] A,
    input [7 : 0] B,
    output [15:0] final_prod,
    output C_out_final_prod
    );
    
    // Intermediate connections
    wire[15:0] P0, P1, P2, P3, P4, P5, P6, P7;
    
    // Initialise the PP-Generator
    PP_Generation_8x8 PP_Gen(
        A,
        B,
        P0,
        P1,
        P2,
        P3,
        P4,
        P5,
        P6,
        P7
    );
    
    // Initialise the Reduction Unit
    Reduction_Unit_8x8 RED_UNIT(
	clk,
        P0,
        P1,
        P2,
        P3,
        P4,
        P5,
        P6,
        P7,
        final_prod,
        C_out_final_prod
    );
    
endmodule


