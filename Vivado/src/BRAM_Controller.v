`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 22:39:53
// Design Name: 
// Module Name: BRAM_Controller
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


module BRAM_Controller(
    input clk,
    input rst,
    output reg ena_A,
    output reg ena_B,
    output reg wea_A,
    output reg wea_B,
    output reg [4:0] addra_A,
    output reg [4:0] addra_B
    );
    
    // Intermediate states
    reg [4:0] PS, NS;
    
    // define the states
    parameter [4:0] S0 = 5'b00000;      // Reset state
    parameter [4:0] S1 = 5'b00001;
    parameter [4:0] S2 = 5'b00010;
    parameter [4:0] S3 = 5'b00011;
    parameter [4:0] S4 = 5'b00100;
    parameter [4:0] S5 = 5'b00101;
    parameter [4:0] S6 = 5'b00110;
    parameter [4:0] S7 = 5'b00111;
    parameter [4:0] S8 = 5'b01000;
    parameter [4:0] S9 = 5'b01001;
    parameter [4:0] S10 = 5'b01010;
    parameter [4:0] S11 = 5'b01011;
    parameter [4:0] S12 = 5'b01100;
    parameter [4:0] S13 = 5'b01101;
    parameter [4:0] S14 = 5'b01110;
    parameter [4:0] S15 = 5'b01111;
    parameter [4:0] S16 = 5'b10000;
    parameter [4:0] S17 = 5'b10001;
    parameter [4:0] S18 = 5'b10010;
    parameter [4:0] S19 = 5'b10011;
    parameter [4:0] S20 = 5'b10100;
    parameter [4:0] S21 = 5'b10101;
    
    // define the state transitions
    always@(posedge clk or posedge rst)
        begin
            if(rst == 1'b1)
                PS <= S0;
            else
                PS <= NS;
        end
    
    // define the next state logic
    always@(PS)
        begin
            case(PS)
                S0 : begin
                    ena_A <= 1'b0;
                    wea_A <= 1'b1;
                    addra_A <= 5'b00000;
                    ena_B <= 1'b0;
                    wea_B <= 1'b1;
                    addra_B <= 5'b00000;
                    NS <= S1;
                end
                S1 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00000;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00000;
                    NS <= S2;
                end
                S2 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00001;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00001;
                    NS <= S3;
                end
                S3 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00010;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00010;
                    NS <= S4;
                end
                S4 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00011;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00011;
                    NS <= S5;
                end
                S5 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00100;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00100;
                    NS <= S6;
                end
                S6 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00101;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00101;
                    NS <= S7;
                end
                S7 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00110;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00110;
                    NS <= S8;
                end
                S8 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b00111;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b00111;
                    NS <= S9;
                end
                S9 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01000;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01000;
                    NS <= S10;
                end
                S10 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01001;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01001;
                    NS <= S11;
                end
                S11 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01010;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01010;
                    NS <= S12;
                end
                S12 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01011;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01011;
                    NS <= S13;
                end
                S13 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01100;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01100;
                    NS <= S14;
                end
                S14 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01101;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01101;
                    NS <= S15;
                end
                S15 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01110;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01110;
                    NS <= S16;
                end
                S16 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b01111;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b01111;
                    NS <= S17;
                end
                S17 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b10000;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b10000;
                    NS <= S18;
                end
                S18 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b10001;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b10001;
                    NS <= S19;
                end
                S19 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b10010;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b10010;
                    NS <= S20;
                end
                S20 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b10011;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b10011;
                    NS <= S21;
                end
                S21 : begin
                    ena_A <= 1'b1;
                    wea_A <= 1'b0;
                    addra_A <= 5'b10100;
                    ena_B <= 1'b1;
                    wea_B <= 1'b0;
                    addra_B <= 5'b10100;
                    NS <= S1;
                end
            endcase
        end
    
endmodule
