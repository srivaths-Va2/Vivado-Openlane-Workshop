`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 19:26:17
// Design Name: 
// Module Name: multiplexer_2x1
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

// As the clock is of CPOL = 0, the MSB must flow first and then LSB

module multiplexer_2x1(
    input [31:0] product_MSB,
    input [31:0] product_LSB,
    input clk_sel,
    output [31:0] mux_out
    );
    
    assign mux_out = clk_sel ? product_LSB : product_MSB;
    
endmodule
