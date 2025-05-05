`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 19:23:14
// Design Name: 
// Module Name: clock_divider_2
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

// This module would convert the 100MHz input clock to 1Hz output clock

// For testing, the input clock is at 200 MHz. The output from this module must be at 100 MHz
// In real implementation, the input to the clock is at 100 MHz, and the output is at 0.5 Hz

module clock_divider_2(
    input clk,
    input rst,
    output clk_div_2
    );
    
    reg clk_out_reg = 0;
    integer ctr_reg = 0;
    
    always@(posedge clk or posedge rst)
        begin
            if(rst)
                begin
                    ctr_reg <= 0;
                    clk_out_reg <= 0;
                end
            else
                begin
                    if(ctr_reg == 1)     // replace with 99999999 after testing
                        begin
                            ctr_reg <= 0;
                            clk_out_reg <= ~clk_out_reg;
                        end
                    else
                        ctr_reg <= ctr_reg + 1;
                end
        end
     
     assign clk_div_2 = clk_out_reg;
endmodule
