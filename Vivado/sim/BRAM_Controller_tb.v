`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 23:04:16
// Design Name: 
// Module Name: BRAM_Controller_tb
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


module BRAM_Controller_tb;
reg clk;
reg rst;
wire ena_A;
wire ena_B;
wire wea_A;
wire wea_B;
wire [4:0] addra_A;
wire [4:0] addra_B;

BRAM_Controller DUT(
    clk,
    rst,
    ena_A,
    ena_B,
    wea_A,
    wea_B,
    addra_A,
    addra_B
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
