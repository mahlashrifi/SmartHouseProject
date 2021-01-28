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
---  Module Name: 8 Bit Multiplier
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Multiplier8x8 (
	input  [ 7:0] A , // input  [unsigned 08 bits]
	input  [ 7:0] B , // input  [unsigned 08 bits]
	output [15:0] P   // output [unsigned 16 bits]
);

	/* write your code here */
	wire [15:0] sum0;
	wire [15:0] line0;
	assign line0[15:8] = {1'b0};
	
	
	//B = 0
	and(line0[0] , A[0] , B[0]);
	and(line0[1] , A[1] , B[0]);
	and(line0[2] , A[2] , B[0]);
	and(line0[3] , A[3] , B[0]);
	and(line0[4] , A[4] , B[0]);
	and(line0[5] , A[5] , B[0]);
	and(line0[6] , A[6] , B[0]);
	and(line0[7] , A[7] , B[0]);
	
	
	AdderSubtractor32x32 S0(16'b0000000000000000 , line0 , 1'b0 , sum0);
	
	
	wire [15:0] sum1;
	wire [15:0] line1;
	
	
	//B = 1
	assign line1[0:0] = {1'b0};
	assign line1[15:9] = {1'b0};
	and(line1[1] , A[0] , B[1]);
	and(line1[2] , A[1] , B[1]);
	and(line1[3] , A[2] , B[1]);
	and(line1[4] , A[3] , B[1]);
	and(line1[5] , A[4] , B[1]);
	and(line1[6] , A[5] , B[1]);
	and(line1[7] , A[6] , B[1]);
	and(line1[8] , A[7] , B[1]);


	AdderSubtractor32x32 S1(sum0 , line1 , 1'b0, sum1);

	wire [15:0] sum2;
	wire [15:0] line2;
	
	
	//B = 2
	assign line2[1:0] = {1'b0};
	assign line2[15:10] = {1'b0};
	and(line2[2] , A[0] , B[2]);
	and(line2[3] , A[1] , B[2]);
	and(line2[4] , A[2] , B[2]);
	and(line2[5] , A[3] , B[2]);
	and(line2[6] , A[4] , B[2]);
	and(line2[7] , A[5] , B[2]);
	and(line2[8] , A[6] , B[2]);
	and(line2[9] , A[7] , B[2]);


	AdderSubtractor32x32 S2(sum1 , line2 , 1'b0, sum2);

	wire [15:0] sum3;
	wire [15:0] line3;
	
	
	//B = 3
	assign line3[2:0] = {1'b0};
	assign line3[15:11] = {1'b0};
	and(line3[3] , A[0] , B[3]);
	and(line3[4] , A[1] , B[3]);
	and(line3[5] , A[2] , B[3]);
	and(line3[6] , A[3] , B[3]);
	and(line3[7] , A[4] , B[3]);
	and(line3[8] , A[5] , B[3]);
	and(line3[9] , A[6] , B[3]);
	and(line3[10] , A[7] , B[3]);


	AdderSubtractor32x32 S3(sum2 , line3 , 1'b0, sum3);

	wire [15:0] sum4;
	wire [15:0] line4;
	
	
	//B = 4
	assign line4[3:0] = {1'b0};
	assign line4[15:12] = {1'b0};
	and(line4[4] , A[0] , B[4]);
	and(line4[5] , A[1] , B[4]);
	and(line4[6] , A[2] , B[4]);
	and(line4[7] , A[3] , B[4]);
	and(line4[8] , A[4] , B[4]);
	and(line4[9] , A[5] , B[4]);
	and(line4[10] , A[6] , B[4]);
	and(line4[11] , A[7] , B[4]);


	AdderSubtractor32x32 S4(sum3 , line4 , 1'b0, sum4);

	wire [15:0] sum5;
	wire [15:0] line5;
	
	
	//B = 5
	assign line5[4:0] = {1'b0};
	assign line5[15:13] = {1'b0};
	and(line5[5] , A[0] , B[5]);
	and(line5[6] , A[1] , B[5]);
	and(line5[7] , A[2] , B[5]);
	and(line5[8] , A[3] , B[5]);
	and(line5[9] , A[4] , B[5]);
	and(line5[10] , A[5] , B[5]);
	and(line5[11] , A[6] , B[5]);
	and(line5[12] , A[7] , B[5]);


	AdderSubtractor32x32 S5(sum4 , line5 , 1'b0, sum5);

	wire [15:0] sum6;
	wire [15:0] line6;
	
	
	//B = 6
	assign line6[5:0] = {1'b0};
	assign line6[15:14] = {1'b0};
	and(line6[6] , A[0] , B[6]);
	and(line6[7] , A[1] , B[6]);
	and(line6[8] , A[2] , B[6]);
	and(line6[9] , A[3] , B[6]);
	and(line6[10] , A[4] , B[6]);
	and(line6[11] , A[5] , B[6]);
	and(line6[12] , A[6] , B[6]);
	and(line6[13] , A[7] , B[6]);


	AdderSubtractor32x32 S6(sum5 , line6 , 1'b0, sum6);

	wire [15:0] sum7;
	wire [15:0] line7;
	
	
	//B = 7
	assign line7[6:0] = {1'b0};
	assign line7[15:15] = {1'b0};
	and(line7[7] , A[0] , B[7]);
	and(line7[8] , A[1] , B[7]);
	and(line7[9] , A[2] , B[7]);
	and(line7[10] , A[3] , B[7]);
	and(line7[11] , A[4] , B[7]);
	and(line7[12] , A[5] , B[7]);
	and(line7[13] , A[6] , B[7]);
	and(line7[14] , A[7] , B[7]);


	AdderSubtractor32x32 S7(sum6 , line7 , 1'b0, P);



	/* write your code here */

endmodule