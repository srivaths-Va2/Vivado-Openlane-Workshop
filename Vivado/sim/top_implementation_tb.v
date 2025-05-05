`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2025 10:31:38
// Design Name: 
// Module Name: top_implementation_tb
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


module top_implementation_tb;
reg clk;
reg rst;
wire [0:6] seg;
wire [3:0] digit;
wire [15:0] LED_array;

top_implementation DUT(
    clk,
    rst,
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
