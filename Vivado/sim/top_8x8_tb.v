`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2025 15:02:27
// Design Name: 
// Module Name: top_8x8_tb
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


module top_8x8_tb;
reg [7:0] A;
reg [7:0] B;
wire [15:0] final_prod;
wire C_out_final_prod;

// initialise the top module
top_8x8 TOP(
    A,
    B,
    final_prod,
    C_out_final_prod
);

initial
    begin
        A = 8'b1101_0010; B = 8'b0110_0010;
        #100 A = 8'b1110_1101; B = 8'b1010_1010;
        #100 $finish;
    end

endmodule
