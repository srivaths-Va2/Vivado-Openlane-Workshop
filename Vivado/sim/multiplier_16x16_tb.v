`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 15:16:46
// Design Name: 
// Module Name: multiplier_16x16_tb
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


module multiplier_16x16_tb;
reg [15:0] A;
reg [15:0] B;
wire [31:0] P;

multiplier_16x16 MUL_16x16(
    A,
    B,
    P
);

initial
    begin
        A = 16'h0003; B = 16'h0004;
        #50 A = 16'h00FF; B = 16'h00AA;
        #50 A = 16'h0000; B = 16'h1234;
        #50 A = 16'h0001; B = 16'h6556;
        #50 A = 16'hFFFF; B = 16'hFFFF;
        #50 $finish;
    end

endmodule
