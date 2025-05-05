`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 08:34:41
// Design Name: 
// Module Name: top_implementation
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


module top_implementation(
    input clk,
    input rst,
    output [0:6] seg,
    output [3:0] digit,
    output [15:0] LED_array
    );
    
    /*------------------ Define the intermediate wires ------------------*/
    // For the clock divider -> 100 MHz to 0.5Hz
    wire clk_div;    
    // For BRAM Controller
    wire ena_A;
    wire ena_B;
    wire wea_A;
    wire wea_B;
    wire [4:0] addra_A;
    wire [4:0] addra_B;
    // For the BRAM-A
    wire [31:0] dina_A;
    wire [31:0] A;
    // For the BRAM-B
    wire [31:0] dina_B;
    wire [31:0] B;
    // For the 32x32 bit multiplier
    wire [63:0] product;
    // For the 64->32 Slicer
    wire [31:0] product_MSB;
    wire [31:0] product_LSB;
    // For the 2x1 multiplexer
    wire [31:0] mux_out;
    // For the 32-16 slicer
    wire [15:0] product_to_seg7;
    wire [15:0] product_to_LED; 
    
    /*------------------ Instantiate the top modules ------------------*/
    
    /*
    // The clock-divider-1 module : 200 MHz to 50 MHz
    clock_divider_1 CLK_DIV_1(
        clk,
        rst,
        clk_div_1
    );
    
    // The clock-divider-2 module : 200 MHz to 100 MHz
    clock_divider_2 CLK_DIV_2(
        clk,
        rst,
        clk_div_2
    );
    */
    
    // The clock generator
    clk_generator CLK_GEN(
        clk,
        rst,
        clk_div
    );
    
    // The BRAM Controller
    BRAM_Controller BRAM_CTRL(
        clk_div,
        rst,
        ena_A,
        ena_B,
        wea_A,
        wea_B,
        addra_A,
        addra_B
    );
    
    // The BRAM-A Memory unit
    BRAM_Memory_A Mem_A(
        clk_div,
        ena_A,
        wea_A,
        addra_A,
        dina_A,
        A
    );
    
    // The BRAM-B Memory unit
    BRAM_Memory_B Mem_B(
        clk_div,
        ena_B,
        wea_B,
        addra_B,
        dina_B,
        B
    );
    
    // The 32x32 Multiplier Module
    multiplier_32x32 MUL(
        A,
        B,
        product
    );
    
    // The 64->32 slicer module
    slicer_64x32 SLICER_64to32(
        product,
        product_MSB,
        product_LSB
    );
     
    // The 2x1 Multiplexer
    multiplexer_2x1 MUX(
        product_MSB,
        product_LSB,
        clk_div,
        mux_out
    );
    
    // The 32-16 Slicer module
    slicer_32x16 SLICER_32to16(
        mux_out,
        product_to_seg7,
        product_to_LED
    );
    
    // The 7-Segment Display Module (MSB)
    seg7_control SEG7_CTRL(
        clk,
        rst,
        product_to_seg7[3:0],
        product_to_seg7[7:4],
        product_to_seg7[11:8],
        product_to_seg7[15:12],
        seg,
        digit
    );
    
    // The LED Controller (LSB)
    LEDs_control LED_CTRL(
        product_to_LED,
        LED_array
    );
    
    
    
endmodule
