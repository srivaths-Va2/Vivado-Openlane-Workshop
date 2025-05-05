module Reduction_Unit_8x8(
    input clk,
    input [15:0] P0,
    input [15:0] P1,
    input [15:0] P2,
    input [15:0] P3,
    input [15:0] P4,
    input [15:0] P5,
    input [15:0] P6,
    input [15:0] P7,
    output reg [15:0] final_prod,
    output reg C_out_final_prod
    );

    // Pipeline stage 1
    wire[15 : 0] S1;
    wire C1;

    adder_16_bit ADD0(
    	P0,
	P1,
	1'b0,
	S1,
	C1
    );
    
    reg[15 : 0] S1_reg;
    reg[15 : 0] P2_reg;
    reg C1_reg;

    always@(posedge clk)
    	begin
		S1_reg <= S1;
		C1_reg <= C1;
		P2_reg <= P2;
	end
    

	// Pipeline stage 2
    wire [15:0] S2;
    wire C2;
    adder_16_bit ADD1(
        S1_reg,
        P2_reg,
        C1_reg,
        S2,
        C2
    );

    reg [15:0] S2_reg, P3_reg;
    reg C2_reg;
    always @(posedge clk) begin
        S2_reg <= S2;
        C2_reg <= C2;
        P3_reg <= P3;
    end

    // Pipeline stage 3
    wire [15:0] S3;
    wire C3;
    adder_16_bit ADD2(
        S2_reg,
        P3_reg,
        C2_reg,
        S3,
        C3
    );

    reg [15:0] S3_reg, P4_reg;
    reg C3_reg;
    always @(posedge clk) begin
        S3_reg <= S3;
        C3_reg <= C3;
        P4_reg <= P4;
    end

    // Pipeline stage 4
    wire [15:0] S4;
    wire C4;
    adder_16_bit ADD3(
        S3_reg,
        P4_reg,
        C3_reg,
        S4,
        C4
    );

    reg [15:0] S4_reg, P5_reg;
    reg C4_reg;
    always @(posedge clk) begin
        S4_reg <= S4;
        C4_reg <= C4;
        P5_reg <= P5;
    end

    // Pipeline stage 5
    wire [15:0] S5;
    wire C5;
    adder_16_bit ADD4(
        S4_reg,
        P5_reg,
        C4_reg,
        S5,
        C5
    );

    reg [15:0] S5_reg, P6_reg;
    reg C5_reg;
    always @(posedge clk) begin
        S5_reg <= S5;
        C5_reg <= C5;
        P6_reg <= P6;
    end

    // Pipeline stage 6
    wire [15:0] S6;
    wire C6;
    adder_16_bit ADD5(
        S5_reg,
        P6_reg,
        C5_reg,
        S6,
        C6
    );

    reg [15:0] S6_reg, P7_reg;
    reg C6_reg;
    always @(posedge clk) begin
        S6_reg <= S6;
        C6_reg <= C6;
        P7_reg <= P7;
    end

    // Pipeline stage 7
    wire [15:0] S7;
    wire C7;
    adder_16_bit ADD6(
        S6_reg,
        P7_reg,
        C6_reg,
        S7,
        C7
    );

    always @(posedge clk) begin
        final_prod <= S7;
        C_out_final_prod <= C7;
    end	

endmodule


