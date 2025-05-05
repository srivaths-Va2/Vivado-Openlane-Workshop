`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 14:56:30
// Design Name: 
// Module Name: adder_8_bit
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


module adder_8_bit(
    input[7:0] A,
    input[7:0] B,
    input C_in,
    output [7:0] S,
    output C_out
    );
    
    assign {C_out, S} = A+B+C_in;
    
endmodule
