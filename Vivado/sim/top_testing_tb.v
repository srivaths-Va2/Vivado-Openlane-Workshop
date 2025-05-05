`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 20:02:03
// Design Name: 
// Module Name: top_testing_tb
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


module top_testing_tb;
reg clk;
reg rst;
wire clk_div;
wire [31:0] A;
wire [31:0] B;
wire [63:0] product;
wire [31:0] product_MSB;
wire [31:0] product_LSB;
wire [15:0] product_to_seg7;
wire [15:0] product_to_LED;
wire [0:6] seg;
wire [3:0] digit;
wire [15:0] LED_array;

top_testing DUT(
    clk,
    rst,
    clk_div,
    A,
    B,
    product,
    product_MSB,
    product_LSB,
    product_to_seg7,
    product_to_LED,
    seg,
    digit,
    LED_array
);

initial
    begin
        clk = 1'b0;
        forever
            #5 clk = ~clk;          // Simulation at 200MHz
    end

initial
    begin
        rst = 1'b1;
        #5 rst = 1'b0;
        #1000 $finish;
    end

endmodule
