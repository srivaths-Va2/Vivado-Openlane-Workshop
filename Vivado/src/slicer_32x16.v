`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 18:24:49
// Design Name: 
// Module Name: slicer_32x16
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


module slicer_32x16(
    input [31:0] mux_out,
    output [15:0] value_to_display,
    output [15:0] value_to_LEDs
    );
    
    assign value_to_display = mux_out[31:16];
    assign value_to_LEDs = mux_out[15:0];
    
endmodule
