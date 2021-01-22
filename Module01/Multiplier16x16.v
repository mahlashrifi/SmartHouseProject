/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 16 Bit Multiplier
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Multiplier16x16 (
	input  [15:0] A , // input  [unsigned 16 bits]
	input  [15:0] B , // input  [unsigned 16 bits]
	output [31:0] P   // output [unsigned 32 bits]
);

	/* write your code here */
	
	wire [31:0] sum0;
	wire [31:0] line0;
	assign line0[31:16] = {1'b0};
	
	
	//B = 0
	and(line0[0] , A[0] , B[0]);
	and(line0[1] , A[1] , B[0]);
	and(line0[2] , A[2] , B[0]);
	and(line0[3] , A[3] , B[0]);
	and(line0[4] , A[4] , B[0]);
	and(line0[5] , A[5] , B[0]);
	and(line0[6] , A[6] , B[0]);
	and(line0[7] , A[7] , B[0]);
	and(line0[8] , A[8] , B[0]);
	and(line0[9] , A[9] , B[0]);
	and(line0[10] , A[10] , B[0]);
	and(line0[11] , A[11] , B[0]);
	and(line0[12] , A[12] , B[0]);
	and(line0[13] , A[13] , B[0]);
	and(line0[14] , A[14] , B[0]);
	and(line0[15] , A[15] , B[0]);
	
	AdderSubtractor32x32 S0(32'b00000000000000000000000000000000 , line0 , 1'b0 , sum0);
	
	wire [31:0] sum1;
	wire [31:0] line1;
	
	
	//B = 1
	assign line1[0:0] = {1'b0};
	assign line1[31:17] = {1'b0};
	and(line1[1] , A[0] , B[1]);
	and(line1[2] , A[1] , B[1]);
	and(line1[3] , A[2] , B[1]);
	and(line1[4] , A[3] , B[1]);
	and(line1[5] , A[4] , B[1]);
	and(line1[6] , A[5] , B[1]);
	and(line1[7] , A[6] , B[1]);
	and(line1[8] , A[7] , B[1]);
	and(line1[9] , A[8] , B[1]);
	and(line1[10] , A[9] , B[1]);
	and(line1[11] , A[10] , B[1]);
	and(line1[12] , A[11] , B[1]);
	and(line1[13] , A[12] , B[1]);
	and(line1[14] , A[13] , B[1]);
	and(line1[15] , A[14] , B[1]);
	and(line1[16] , A[15] , B[1]);


	AdderSubtractor32x32 S1(sum0 , line1 , 1'b0, sum1);
	wire [31:0] sum2;
	wire [31:0] line2;
	
	
	//B = 2
	assign line2[1:0] = {1'b0};
	assign line2[31:18] = {1'b0};
	and(line2[2] , A[0] , B[2]);
	and(line2[3] , A[1] , B[2]);
	and(line2[4] , A[2] , B[2]);
	and(line2[5] , A[3] , B[2]);
	and(line2[6] , A[4] , B[2]);
	and(line2[7] , A[5] , B[2]);
	and(line2[8] , A[6] , B[2]);
	and(line2[9] , A[7] , B[2]);
	and(line2[10] , A[8] , B[2]);
	and(line2[11] , A[9] , B[2]);
	and(line2[12] , A[10] , B[2]);
	and(line2[13] , A[11] , B[2]);
	and(line2[14] , A[12] , B[2]);
	and(line2[15] , A[13] , B[2]);
	and(line2[16] , A[14] , B[2]);
	and(line2[17] , A[15] , B[2]);


	AdderSubtractor32x32 S2(sum1 , line2 , 1'b0, sum2);
	wire [31:0] sum3;
	wire [31:0] line3;
	
	
	//B = 3
	assign line3[2:0] = {1'b0};
	assign line3[31:19] = {1'b0};
	and(line3[3] , A[0] , B[3]);
	and(line3[4] , A[1] , B[3]);
	and(line3[5] , A[2] , B[3]);
	and(line3[6] , A[3] , B[3]);
	and(line3[7] , A[4] , B[3]);
	and(line3[8] , A[5] , B[3]);
	and(line3[9] , A[6] , B[3]);
	and(line3[10] , A[7] , B[3]);
	and(line3[11] , A[8] , B[3]);
	and(line3[12] , A[9] , B[3]);
	and(line3[13] , A[10] , B[3]);
	and(line3[14] , A[11] , B[3]);
	and(line3[15] , A[12] , B[3]);
	and(line3[16] , A[13] , B[3]);
	and(line3[17] , A[14] , B[3]);
	and(line3[18] , A[15] , B[3]);


	AdderSubtractor32x32 S3(sum2 , line3 , 1'b0, sum3);
	wire [31:0] sum4;
	wire [31:0] line4;
	
	
	//B = 4
	assign line4[3:0] = {1'b0};
	assign line4[31:20] = {1'b0};
	and(line4[4] , A[0] , B[4]);
	and(line4[5] , A[1] , B[4]);
	and(line4[6] , A[2] , B[4]);
	and(line4[7] , A[3] , B[4]);
	and(line4[8] , A[4] , B[4]);
	and(line4[9] , A[5] , B[4]);
	and(line4[10] , A[6] , B[4]);
	and(line4[11] , A[7] , B[4]);
	and(line4[12] , A[8] , B[4]);
	and(line4[13] , A[9] , B[4]);
	and(line4[14] , A[10] , B[4]);
	and(line4[15] , A[11] , B[4]);
	and(line4[16] , A[12] , B[4]);
	and(line4[17] , A[13] , B[4]);
	and(line4[18] , A[14] , B[4]);
	and(line4[19] , A[15] , B[4]);


	AdderSubtractor32x32 S4(sum3 , line4 , 1'b0, sum4);
	wire [31:0] sum5;
	wire [31:0] line5;
	
	
	//B = 5
	assign line5[4:0] = {1'b0};
	assign line5[31:21] = {1'b0};
	and(line5[5] , A[0] , B[5]);
	and(line5[6] , A[1] , B[5]);
	and(line5[7] , A[2] , B[5]);
	and(line5[8] , A[3] , B[5]);
	and(line5[9] , A[4] , B[5]);
	and(line5[10] , A[5] , B[5]);
	and(line5[11] , A[6] , B[5]);
	and(line5[12] , A[7] , B[5]);
	and(line5[13] , A[8] , B[5]);
	and(line5[14] , A[9] , B[5]);
	and(line5[15] , A[10] , B[5]);
	and(line5[16] , A[11] , B[5]);
	and(line5[17] , A[12] , B[5]);
	and(line5[18] , A[13] , B[5]);
	and(line5[19] , A[14] , B[5]);
	and(line5[20] , A[15] , B[5]);


	AdderSubtractor32x32 S5(sum4 , line5 , 1'b0, sum5);
	wire [31:0] sum6;
	wire [31:0] line6;
	
	
	//B = 6
	assign line6[5:0] = {1'b0};
	assign line6[31:22] = {1'b0};
	and(line6[6] , A[0] , B[6]);
	and(line6[7] , A[1] , B[6]);
	and(line6[8] , A[2] , B[6]);
	and(line6[9] , A[3] , B[6]);
	and(line6[10] , A[4] , B[6]);
	and(line6[11] , A[5] , B[6]);
	and(line6[12] , A[6] , B[6]);
	and(line6[13] , A[7] , B[6]);
	and(line6[14] , A[8] , B[6]);
	and(line6[15] , A[9] , B[6]);
	and(line6[16] , A[10] , B[6]);
	and(line6[17] , A[11] , B[6]);
	and(line6[18] , A[12] , B[6]);
	and(line6[19] , A[13] , B[6]);
	and(line6[20] , A[14] , B[6]);
	and(line6[21] , A[15] , B[6]);


	AdderSubtractor32x32 S6(sum5 , line6 , 1'b0, sum6);
	wire [31:0] sum7;
	wire [31:0] line7;
	
	
	//B = 7
	assign line7[6:0] = {1'b0};
	assign line7[31:23] = {1'b0};
	and(line7[7] , A[0] , B[7]);
	and(line7[8] , A[1] , B[7]);
	and(line7[9] , A[2] , B[7]);
	and(line7[10] , A[3] , B[7]);
	and(line7[11] , A[4] , B[7]);
	and(line7[12] , A[5] , B[7]);
	and(line7[13] , A[6] , B[7]);
	and(line7[14] , A[7] , B[7]);
	and(line7[15] , A[8] , B[7]);
	and(line7[16] , A[9] , B[7]);
	and(line7[17] , A[10] , B[7]);
	and(line7[18] , A[11] , B[7]);
	and(line7[19] , A[12] , B[7]);
	and(line7[20] , A[13] , B[7]);
	and(line7[21] , A[14] , B[7]);
	and(line7[22] , A[15] , B[7]);


	AdderSubtractor32x32 S7(sum6 , line7 , 1'b0, sum7);
	wire [31:0] sum8;
	wire [31:0] line8;
	
	
	//B = 8
	assign line8[7:0] = {1'b0};
	assign line8[31:24] = {1'b0};
	and(line8[8] , A[0] , B[8]);
	and(line8[9] , A[1] , B[8]);
	and(line8[10] , A[2] , B[8]);
	and(line8[11] , A[3] , B[8]);
	and(line8[12] , A[4] , B[8]);
	and(line8[13] , A[5] , B[8]);
	and(line8[14] , A[6] , B[8]);
	and(line8[15] , A[7] , B[8]);
	and(line8[16] , A[8] , B[8]);
	and(line8[17] , A[9] , B[8]);
	and(line8[18] , A[10] , B[8]);
	and(line8[19] , A[11] , B[8]);
	and(line8[20] , A[12] , B[8]);
	and(line8[21] , A[13] , B[8]);
	and(line8[22] , A[14] , B[8]);
	and(line8[23] , A[15] , B[8]);


	AdderSubtractor32x32 S8(sum7 , line8 , 1'b0, sum8);
	wire [31:0] sum9;
	wire [31:0] line9;
	
	
	//B = 9
	assign line9[8:0] = {1'b0};
	assign line9[31:25] = {1'b0};
	and(line9[9] , A[0] , B[9]);
	and(line9[10] , A[1] , B[9]);
	and(line9[11] , A[2] , B[9]);
	and(line9[12] , A[3] , B[9]);
	and(line9[13] , A[4] , B[9]);
	and(line9[14] , A[5] , B[9]);
	and(line9[15] , A[6] , B[9]);
	and(line9[16] , A[7] , B[9]);
	and(line9[17] , A[8] , B[9]);
	and(line9[18] , A[9] , B[9]);
	and(line9[19] , A[10] , B[9]);
	and(line9[20] , A[11] , B[9]);
	and(line9[21] , A[12] , B[9]);
	and(line9[22] , A[13] , B[9]);
	and(line9[23] , A[14] , B[9]);
		and(line9[24] , A[15] , B[9]);


	AdderSubtractor32x32 S9(sum8 , line9 , 1'b0, sum9);
	wire [31:0] sum10;
	wire [31:0] line10;
	
	
	//B = 10
	assign line10[9:0] = {1'b0};
	assign line10[31:26] = {1'b0};
	and(line10[10] , A[0] , B[10]);
	and(line10[11] , A[1] , B[10]);
	and(line10[12] , A[2] , B[10]);
	and(line10[13] , A[3] , B[10]);
	and(line10[14] , A[4] , B[10]);
	and(line10[15] , A[5] , B[10]);
	and(line10[16] , A[6] , B[10]);
	and(line10[17] , A[7] , B[10]);
	and(line10[18] , A[8] , B[10]);
	and(line10[19] , A[9] , B[10]);
	and(line10[20] , A[10] , B[10]);
	and(line10[21] , A[11] , B[10]);
	and(line10[22] , A[12] , B[10]);
	and(line10[23] , A[13] , B[10]);
	and(line10[24] , A[14] , B[10]);
	and(line10[25] , A[15] , B[10]);


	AdderSubtractor32x32 S10(sum9 , line10 , 1'b0, sum10);
	wire [31:0] sum11;
	wire [31:0] line11;
	
	
	//B = 11
	assign line11[10:0] = {1'b0};
	assign line11[31:27] = {1'b0};
	and(line11[11] , A[0] , B[11]);
	and(line11[12] , A[1] , B[11]);
	and(line11[13] , A[2] , B[11]);
	and(line11[14] , A[3] , B[11]);
	and(line11[15] , A[4] , B[11]);
	and(line11[16] , A[5] , B[11]);
	and(line11[17] , A[6] , B[11]);
	and(line11[18] , A[7] , B[11]);
	and(line11[19] , A[8] , B[11]);
	and(line11[20] , A[9] , B[11]);
	and(line11[21] , A[10] , B[11]);
	and(line11[22] , A[11] , B[11]);
	and(line11[23] , A[12] , B[11]);
	and(line11[24] , A[13] , B[11]);
	and(line11[25] , A[14] , B[11]);
	and(line11[26] , A[15] , B[11]);


	AdderSubtractor32x32 S11(sum10 , line11 , 1'b0, sum11);
	wire [31:0] sum12;
	wire [31:0] line12;
	
	
	//B = 12
	assign line12[11:0] = {1'b0};
	assign line12[31:28] = {1'b0};
	and(line12[12] , A[0] , B[12]);
	and(line12[13] , A[1] , B[12]);
	and(line12[14] , A[2] , B[12]);
	and(line12[15] , A[3] , B[12]);
	and(line12[16] , A[4] , B[12]);
	and(line12[17] , A[5] , B[12]);
	and(line12[18] , A[6] , B[12]);
	and(line12[19] , A[7] , B[12]);
	and(line12[20] , A[8] , B[12]);
	and(line12[21] , A[9] , B[12]);
	and(line12[22] , A[10] , B[12]);
	and(line12[23] , A[11] , B[12]);
	and(line12[24] , A[12] , B[12]);
	and(line12[25] , A[13] , B[12]);
	and(line12[26] , A[14] , B[12]);
	and(line12[27] , A[15] , B[12]);


	AdderSubtractor32x32 S12(sum11 , line12 , 1'b0, sum12);
	wire [31:0] sum13;
	wire [31:0] line13;
	
	
	//B = 13
	assign line13[12:0] = {1'b0};
	assign line13[31:29] = {1'b0};
	and(line13[13] , A[0] , B[13]);
	and(line13[14] , A[1] , B[13]);
	and(line13[15] , A[2] , B[13]);
	and(line13[16] , A[3] , B[13]);
	and(line13[17] , A[4] , B[13]);
	and(line13[18] , A[5] , B[13]);
	and(line13[19] , A[6] , B[13]);
	and(line13[20] , A[7] , B[13]);
	and(line13[21] , A[8] , B[13]);
	and(line13[22] , A[9] , B[13]);
	and(line13[23] , A[10] , B[13]);
	and(line13[24] , A[11] , B[13]);
	and(line13[25] , A[12] , B[13]);
	and(line13[26] , A[13] , B[13]);
	and(line13[27] , A[14] , B[13]);
	and(line13[28] , A[15] , B[13]);


	AdderSubtractor32x32 S13(sum12 , line13 , 1'b0, sum13);
	wire [31:0] sum14;
	wire [31:0] line14;
	
	
	//B = 14
	assign line14[13:0] = {1'b0};
	assign line14[31:30] = {1'b0};
	and(line14[14] , A[0] , B[14]);
	and(line14[15] , A[1] , B[14]);
	and(line14[16] , A[2] , B[14]);
	and(line14[17] , A[3] , B[14]);
	and(line14[18] , A[4] , B[14]);
	and(line14[19] , A[5] , B[14]);
	and(line14[20] , A[6] , B[14]);
	and(line14[21] , A[7] , B[14]);
	and(line14[22] , A[8] , B[14]);
	and(line14[23] , A[9] , B[14]);
	and(line14[24] , A[10] , B[14]);
	and(line14[25] , A[11] , B[14]);
	and(line14[26] , A[12] , B[14]);
	and(line14[27] , A[13] , B[14]);
	and(line14[28] , A[14] , B[14]);
	and(line14[29] , A[15] , B[14]);


	AdderSubtractor32x32 S14(sum13 , line14 , 1'b0, sum14);
	wire [31:0] sum15;
	wire [31:0] line15;
	
	
	//B = 15
	assign line15[14:0] = {1'b0};
	assign line15[31] = {1'b0};
	and(line15[15] , A[0] , B[15]);
	and(line15[16] , A[1] , B[15]);
	and(line15[17] , A[2] , B[15]);
	and(line15[18] , A[3] , B[15]);
	and(line15[19] , A[4] , B[15]);
	and(line15[20] , A[5] , B[15]);
	and(line15[21] , A[6] , B[15]);
	and(line15[22] , A[7] , B[15]);
	and(line15[23] , A[8] , B[15]);
	and(line15[24] , A[9] , B[15]);
	and(line15[25] , A[10] , B[15]);
	and(line15[26] , A[11] , B[15]);
	and(line15[27] , A[12] , B[15]);
	and(line15[28] , A[13] , B[15]);
	and(line15[29] , A[14] , B[15]);
	and(line15[30] , A[15] , B[15]);


	AdderSubtractor32x32 S15(sum14 , line15 , 1'b0, sum15);

	assign P =  sum15;

	
	/* write your code here */

endmodule