`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 20:45:46
// Design Name: 
// Module Name: clk_generator
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


module clk_generator(
    input clk,
    input rst,
    output clk_div
    );
    
    reg clk_out_reg = 0;
    integer ctr_reg = 0;    
    
    // For the slower clock
    always@(posedge clk or posedge rst)
        begin
            if(rst)
                begin
                    ctr_reg <= 0;
                    clk_out_reg <= 0;
                end
            else
                begin
                    if(ctr_reg == 199999999)        // replace with 199999999 after testing
                        begin
                            ctr_reg <= 0;
                            clk_out_reg <= ~clk_out_reg;
                        end
                    else
                        ctr_reg <= ctr_reg + 1;
                end
        end
    
    
    assign clk_div = clk_out_reg;
    
endmodule
