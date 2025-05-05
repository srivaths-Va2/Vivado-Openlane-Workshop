module adder_8_bit(
    input[7:0] A,
    input[7:0] B,
    input C_in,
    output [7:0] S,
    output C_out
    );
    
    assign {C_out, S} = A+B+C_in;
    
endmodule

