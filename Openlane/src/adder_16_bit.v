module adder_16_bit(
    input [15 : 0] A,
    input [15 : 0] B,
    input C_in,
    output [15 : 0] S,
    output C_out
    );
    
    // Assign the intermediate variables
    wire C_1;
    
    // Assign the LSB adder
    adder_8_bit ADD_LSB(
        A[7:0],
        B[7:0],
        C_in,
        S[7:0],
        C_1
    );
    
    // Assign the MSB adder
    adder_8_bit ADD_MSB(
        A[15:8],
        B[15:8],
        C_1,
        S[15:8],
        C_out
    );
    
endmodule

