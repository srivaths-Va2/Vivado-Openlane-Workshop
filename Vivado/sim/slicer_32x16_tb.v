`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 18:27:26
// Design Name: 
// Module Name: slicer_32x16_tb
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


module slicer_32x16_tb;
reg [31:0] mux_out;
wire [15:0] value_to_display;
wire [15:0] value_to_LEDs;

slicer_32x16 DUT(
    mux_out,
    value_to_display,
    value_to_LEDs
);

initial
    begin
        mux_out = 32'h01234567;
        #100 mux_out = 32'h89ABCDEF;
        #100 $finish;
    end


endmodule
