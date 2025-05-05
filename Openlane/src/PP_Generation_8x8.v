module PP_Generation_8x8(
    input [7 : 0] A,
    input [7 : 0] B,
    output [15:0] P0,
    output [15:0] P1,
    output [15:0] P2,
    output [15:0] P3,
    output [15:0] P4,
    output [15:0] P5,
    output [15:0] P6,
    output [15:0] P7
    );
    
    // Intermediate variables to hold AND results 
    wire k00, k01, k02, k03, k04, k05, k06, k07;
    wire k10, k11, k12, k13, k14, k15, k16, k17;
    wire k20, k21, k22, k23, k24, k25, k26, k27;
    wire k30, k31, k32, k33, k34, k35, k36, k37;
    wire k40, k41, k42, k43, k44, k45, k46, k47;
    wire k50, k51, k52, k53, k54, k55, k56, k57;
    wire k60, k61, k62, k63, k64, k65, k66, k67;
    wire k70, k71, k72, k73, k74, k75, k76, k77;
    
    
    // Assign the individual AND gates
    and A00(k00, A[0], B[0]);
    and A01(k01, A[1], B[0]);
    and A02(k02, A[2], B[0]);
    and A03(k03, A[3], B[0]);
    and A04(k04, A[4], B[0]);
    and A05(k05, A[5], B[0]);
    and A06(k06, A[6], B[0]);
    and A07(k07, A[7], B[0]);
    
    and A10(k10, A[0], B[1]);
    and A11(k11, A[1], B[1]);
    and A12(k12, A[2], B[1]);
    and A13(k13, A[3], B[1]);
    and A14(k14, A[4], B[1]);
    and A15(k15, A[5], B[1]);
    and A16(k16, A[6], B[1]);
    and A17(k17, A[7], B[1]);
    
    and A20(k20, A[0], B[2]);
    and A21(k21, A[1], B[2]);
    and A22(k22, A[2], B[2]);
    and A23(k23, A[3], B[2]);
    and A24(k24, A[4], B[2]);
    and A25(k25, A[5], B[2]);
    and A26(k26, A[6], B[2]);
    and A27(k27, A[7], B[2]);
    
    and A30(k30, A[0], B[3]);
    and A31(k31, A[1], B[3]);
    and A32(k32, A[2], B[3]);
    and A33(k33, A[3], B[3]);
    and A34(k34, A[4], B[3]);
    and A35(k35, A[5], B[3]);
    and A36(k36, A[6], B[3]);
    and A37(k37, A[7], B[3]);
    
    and A40(k40, A[0], B[4]);
    and A41(k41, A[1], B[4]);
    and A42(k42, A[2], B[4]);
    and A43(k43, A[3], B[4]);
    and A44(k44, A[4], B[4]);
    and A45(k45, A[5], B[4]);
    and A46(k46, A[6], B[4]);
    and A47(k47, A[7], B[4]);
    
    and A50(k50, A[0], B[5]);
    and A51(k51, A[1], B[5]);
    and A52(k52, A[2], B[5]);
    and A53(k53, A[3], B[5]);
    and A54(k54, A[4], B[5]);
    and A55(k55, A[5], B[5]);
    and A56(k56, A[6], B[5]);
    and A57(k57, A[7], B[5]);
    
    and A60(k60, A[0], B[6]);
    and A61(k61, A[1], B[6]);
    and A62(k62, A[2], B[6]);
    and A63(k63, A[3], B[6]);
    and A64(k64, A[4], B[6]);
    and A65(k65, A[5], B[6]);
    and A66(k66, A[6], B[6]);
    and A67(k67, A[7], B[6]);
    
    and A70(k70, A[0], B[7]);
    and A71(k71, A[1], B[7]);
    and A72(k72, A[2], B[7]);
    and A73(k73, A[3], B[7]);
    and A74(k74, A[4], B[7]);
    and A75(k75, A[5], B[7]);
    and A76(k76, A[6], B[7]);
    and A77(k77, A[7], B[7]);
    
    assign P0 = {0, 0, 0, 0, 0, 0, 0, 0, k07, k06, k05, k04, k03, k02, k01, k00};
    assign P1 = {0, 0, 0, 0, 0, 0, 0, 0, k17, k16, k15, k14, k13, k12, k11, k10} << 1;
    assign P2 = {0, 0, 0, 0, 0, 0, 0, 0, k27, k26, k25, k24, k23, k22, k21, k20} << 2;
    assign P3 = {0, 0, 0, 0, 0, 0, 0, 0, k37, k36, k35, k34, k33, k32, k31, k30} << 3;
    assign P4 = {0, 0, 0, 0, 0, 0, 0, 0, k47, k46, k45, k44, k43, k42, k41, k40} << 4;
    assign P5 = {0, 0, 0, 0, 0, 0, 0, 0, k57, k56, k55, k54, k53, k52, k51, k50} << 5;
    assign P6 = {0, 0, 0, 0, 0, 0, 0, 0, k67, k66, k65, k64, k63, k62, k61, k60} << 6;
    assign P7 = {0, 0, 0, 0, 0, 0, 0, 0, k77, k76, k75, k74, k73, k72, k71, k70} << 7;
    
endmodule

