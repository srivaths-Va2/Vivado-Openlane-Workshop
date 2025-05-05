`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 18:15:59
// Design Name: 
// Module Name: slicer_64x32
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


module slicer_64x32(
    input [63:0] product,
    output [31:0] product_MSB,
    output [31:0] product_LSB
    );
    
    assign product_MSB = product[63:32];
    assign product_LSB = product[31:0];
endmodule
