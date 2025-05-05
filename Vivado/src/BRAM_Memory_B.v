`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 22:25:28
// Design Name: 
// Module Name: BRAM_Memory_B
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


module BRAM_Memory_B(
    input clk,
    input ena_B,
    input wea_B,
    input [4:0] addra_B,
    input [31:0] dina_B,
    output [31:0] douta_B
    );

    memory_B BRAM_Mem_B (
      .clka(clk),    // input wire clka
      .ena(ena_B),      // input wire ena
      .wea(wea_B),      // input wire [0 : 0] wea
      .addra(addra_B),  // input wire [4 : 0] addra
      .dina(dina_B),    // input wire [31 : 0] dina
      .douta(douta_B)  // output wire [31 : 0] douta
    );
endmodule
