`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 14:57:29
// Design Name: 
// Module Name: adder_16_bit
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


module adder_16_bit(
    input [15 : 0] A,
    input [15 : 0] B,
    input C_in,
    output [15 : 0] S,
    output C_out
    );
    
    // Assign the intermediate variables
    wire C_1;
    
    // Assign the LSB adder
    adder_8_bit ADD_LSB(
        A[7:0],
        B[7:0],
        C_in,
        S[7:0],
        C_1
    );
    
    // Assign the MSB adder
    adder_8_bit ADD_MSB(
        A[15:8],
        B[15:8],
        C_1,
        S[15:8],
        C_out
    );
    
endmodule

