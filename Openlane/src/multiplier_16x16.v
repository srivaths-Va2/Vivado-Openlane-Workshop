module multiplier_16x16(
    input clk,
    input [15:0] A,
    input [15:0] B,
    output [31:0] P
    );
    
    // Intermediate connections
    wire [15:0] P1, P2, P3, P4;
    wire C_out_8x8_1, C_out_8x8_2, C_out_8x8_3, C_out_8x8_4;
    
    // Instantiate the multipliers
    multiplier_8x8 MUL_8x8_1(clk, A[15:8], B[15:8], P1, C_out_8x8_1);
    multiplier_8x8 MUL_8x8_2(clk, A[15:8], B[7:0], P2, C_out_8x8_2);
    multiplier_8x8 MUL_8x8_3(clk, A[7:0], B[15:8], P3, C_out_8x8_3);
    multiplier_8x8 MUL_8x8_4(clk, A[7:0], B[7:0], P4, C_out_8x8_4);
    
    assign P = (P1 << 16) + ((P2 + P3) << 8) + P4;
    
endmodule
