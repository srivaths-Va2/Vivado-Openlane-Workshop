`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 22:27:41
// Design Name: 
// Module Name: BRAM_Memory_B_tb
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


module BRAM_Memory_B_tb;
reg clk;
reg ena_B;
reg wea_B;
reg [4:0] addra_B;
reg [31:0] dina_B;
wire [31:0] douta_B;

// Instantiate the module
BRAM_Memory_A DUT(
    clk,
    ena_B,
    wea_B,
    addra_B,
    dina_B,
    douta_B
);

initial
    begin
        clk = 1'b0;
        forever 
            #10 clk = ~clk;
    end

initial
    begin
        // Enable the BRAM
        ena_B = 1'b0;
        #20 ena_B = 1'b1; wea_B = 1'b1;
        // Write values to BRAM
        #20 addra_B = 5'b00000; dina_B = 32'hFFFF_FFFF;
        #20 addra_B = 5'b00001; dina_B = 32'h1;
        #20 addra_B = 5'b00010; dina_B = 32'h2;
        #20 addra_B = 5'b00011; dina_B = 32'h3;
        #20 addra_B = 5'b00100; dina_B = 32'h4;
        #20 addra_B = 5'b00101; dina_B = 32'h5;
        #20 addra_B = 5'b00110; dina_B = 32'h6;
        #20 addra_B = 5'b00111; dina_B = 32'h7;
        #20 addra_B = 5'b01000; dina_B = 32'h8;
        #20 addra_B = 5'b01001; dina_B = 32'h9;
        #20 addra_B = 5'b01010; dina_B = 32'h10;
        #20 addra_B = 5'b01011; dina_B = 32'h11;
        #20 addra_B = 5'b01100; dina_B = 32'h12;
        #20 addra_B = 5'b01101; dina_B = 32'h13;
        #20 addra_B = 5'b01110; dina_B = 32'h14;
        #20 addra_B = 5'b01111; dina_B = 32'h15;
        #20 addra_B = 5'b10000; dina_B = 32'h16;
        #20 addra_B = 5'b10001; dina_B = 32'h17;
        #20 addra_B = 5'b10010; dina_B = 32'h18;
        #20 addra_B = 5'b10011; dina_B = 32'h19;
        
        // Read from the BRAM
        #20 wea_B = 1'b0;
        #20 addra_B = 5'b00000;
        #20 addra_B = 5'b00001;
        #20 addra_B = 5'b00010;
        #20 addra_B = 5'b00011;
        #20 addra_B = 5'b00100;
        #20 addra_B = 5'b00101;
        #20 addra_B = 5'b00110;
        #20 addra_B = 5'b00111;
        #20 addra_B = 5'b01000;
        #20 addra_B = 5'b01001;
        #20 addra_B = 5'b01010;
        #20 addra_B = 5'b01011;
        #20 addra_B = 5'b01100;
        #20 addra_B = 5'b01101;
        #20 addra_B = 5'b01110;
        #20 addra_B = 5'b01111;
        #20 addra_B = 5'b10000;
        #20 addra_B = 5'b10001;
        #20 addra_B = 5'b10010;
        #20 addra_B = 5'b10011;
        
        #20 $finish;
        
    end
endmodule
