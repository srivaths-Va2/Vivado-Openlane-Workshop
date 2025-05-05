`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 18:48:34
// Design Name: 
// Module Name: LEDs_control
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


module LEDs_control(
    input [15:0] value_LSB,
    output [15:0] LED_array 
    );
    
    assign LED_array[0] = value_LSB[0];
    assign LED_array[1] = value_LSB[1];
    assign LED_array[2] = value_LSB[2];
    assign LED_array[3] = value_LSB[3];
    assign LED_array[4] = value_LSB[4];
    assign LED_array[5] = value_LSB[5];
    assign LED_array[6] = value_LSB[6];
    assign LED_array[7] = value_LSB[7];
    assign LED_array[8] = value_LSB[8];
    assign LED_array[9] = value_LSB[9];
    assign LED_array[10] = value_LSB[10];
    assign LED_array[11] = value_LSB[11];
    assign LED_array[12] = value_LSB[12];
    assign LED_array[13] = value_LSB[13];
    assign LED_array[14] = value_LSB[14];
    assign LED_array[15] = value_LSB[15];
    
    
endmodule
