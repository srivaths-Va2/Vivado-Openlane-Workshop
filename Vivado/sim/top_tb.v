`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 08:06:13
// Design Name: 
// Module Name: top_tb
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


module top_tb;
reg clk;
reg rst;
wire [31:0] A;
wire [31:0] B;
wire [63:0] P;

top DUT(
    clk,
    rst,
    A,
    B,
    P
);

initial
    begin
        clk = 1'b0;
        forever
            #10 clk = ~clk;
    end

initial
    begin
        rst = 1'b1;
        #20 rst = 1'b0;
        #500 $finish;
    end

endmodule
