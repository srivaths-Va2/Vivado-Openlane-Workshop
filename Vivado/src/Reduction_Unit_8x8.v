`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 14:59:47
// Design Name: 
// Module Name: Reduction_Unit_8x8
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


module Reduction_Unit_8x8(
    input [15:0] P0,
    input [15:0] P1,
    input [15:0] P2,
    input [15:0] P3,
    input [15:0] P4,
    input [15:0] P5,
    input [15:0] P6,
    input [15:0] P7,
    output [15:0] final_prod,
    output C_out_final_prod
    );
    
    // Intermediate variables - Sums
    wire [15:0] S_1, S_2, S_3, S_4, S_5, S_6;
    
    // Intermediate variables - Carrys
    wire [15:0] C_1, C_2, C_3, C_4, C_5, C_6;

    /* Perform Reductions */
    
    // First Adder
    adder_16_bit ADD0(
        P0,
        P1,
        0,
        S_1,
        C_1
    );
    
    // Second Adder
    adder_16_bit ADD1(
        S_1,
        P2,
        C_1,
        S_2,
        C_2
    );
    
    // Third Adder
    adder_16_bit ADD2(
        S_2,
        P3,
        C_2,
        S_3,
        C_3
    );
    
    // Fourth Adder
    adder_16_bit ADD3(
        S_3,
        P4,
        C_3,
        S_4,
        C_4
    );
    
    // Fifth Adder
    adder_16_bit ADD4(
        S_4,
        P5,
        C_4,
        S_5,
        C_5
    );
    
    // Sixth Adder
    adder_16_bit ADD5(
        S_5,
        P6,
        C_5,
        S_6,
        C_6
    );
    
    // Seventh Adder
    adder_16_bit ADD6(
        S_6,
        P7,
        C_6,
        final_prod,
        C_out_final_prod
    );
    
endmodule
