`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 15:32:30
// Design Name: 
// Module Name: multiplier_32x32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier_32x32(
    input [31:0] A,
    input [31:0] B,
    output [63:0] P
    );
    
    // Intermediate connections
    wire [31:0] P1, P2, P3, P4;
    
    // Instantiate the multipliers
    multiplier_16x16 MUL_16x16_1(
        A[31:16],
        B[31:16],
        P1
    );
    
    multiplier_16x16 MUL_16x16_2(
        A[31:16],
        B[15:0],
        P2
    );
    
    multiplier_16x16 MUL_16x16_3(
        A[15:0],
        B[31:16],
        P3
    );
    
    multiplier_16x16 MUL_16x16_4(
        A[15:0],
        B[15:0],
        P4
    );
    
    assign P = (P1 << 32) + ((P2 + P3) << 16) + P4;
    
endmodule
