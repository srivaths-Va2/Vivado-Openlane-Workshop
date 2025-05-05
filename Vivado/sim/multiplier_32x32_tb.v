`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 15:38:32
// Design Name: 
// Module Name: multiplier_32x32_tb
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


module multiplier_32x32_tb;
reg [31:0] A;
reg [31:0] B;
wire [63:0] P;

multiplier_32x32 MUL(
    A,
    B,
    P
);

initial
    begin
        A = 32'h0000_0003; B = 32'h0000_0004;
        #50 A = 32'h0000_0000; B = 32'h1234_5678;
        #50 A = 32'h0000_0001; B = 32'hFFFF_FFFF;
        #50 A = 32'h0000FFFF; B = 32'h0000AAAA;
        #50 A = 32'hFFFFFFFF; B = 32'hFFFFFFFF;
        #50 A = 32'h12345678; B = 32'h87654321;
        #50 $finish;
    end

endmodule
