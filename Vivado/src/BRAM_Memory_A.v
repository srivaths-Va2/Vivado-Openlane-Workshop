`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 22:10:45
// Design Name: 
// Module Name: BRAM_Memory_A
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


module BRAM_Memory_A(
    input clk,
    input ena_A,
    input wea_A,
    input [4:0] addra_A,
    input [31:0] dina_A,
    output [31:0] douta_A
    );
    
    memory_A BRAM_Mem_A (
      .clka(clk),    // input wire clka
      .ena(ena_A),      // input wire ena
      .wea(wea_A),      // input wire [0 : 0] wea
      .addra(addra_A),  // input wire [4 : 0] addra
      .dina(dina_A),    // input wire [31 : 0] dina
      .douta(douta_A)  // output wire [31 : 0] douta
    );
endmodule
