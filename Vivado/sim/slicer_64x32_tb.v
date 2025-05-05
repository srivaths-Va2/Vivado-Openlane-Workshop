`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 18:20:02
// Design Name: 
// Module Name: slicer_64x32_tb
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


module slicer_64x32_tb;
reg [63:0] product;
wire [31:0] product_MSB;
wire [31:0] product_LSB;

slicer_64x32 DUT(
    product,
    product_MSB,
    product_LSB
);

initial
    begin
        product = 64'h0123456789ABCDEF;
        #100 product = 64'hFEDCBA9876543210;
        #100 $finish;
    end

endmodule
