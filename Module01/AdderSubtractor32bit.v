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
---  Module Name: 32 Bit Adder/Subtractor
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module AdderSubtractor32x32 (
	input  [31:0] A    , // input  [2's complement 32 bits]
	input  [31:0] B    , // input  [2's complement 32 bits]
	input         sel  , // input  [add:sel=0 || sub:sel=1] 
	output [31:0] S      // output [2's complement 32 bits]
);
	// if sel = 0 then add else subtract
	/* write your code here */
			wire [31:0] cout;
		wire [31:0] C;
		
		//bit 0
		xor(C[0] , sel , B[0]);
		assign S[0] = A[0] ^ C[0] ^ sel;
		assign cout[0] = (A[0] & C[0]) | sel & (A[0] ^ C[0]);
		
		//bit1
		xor(C[1] , sel , B[1]);
		assign S[1] = A[1] ^ C[1] ^ cout[0];
		assign cout[1] = (A[1] & C[1]) | cout[0] & (A[1] ^ C[1]);


        	//bit2
		xor(C[2] , sel , B[2]);
		assign S[2] = A[2] ^ C[2] ^ cout[1];
		assign cout[2] = (A[2] & C[2]) | cout[1] & (A[2] ^ C[2]);


	        //bit3
		xor(C[3] , sel , B[3]);
		assign S[3] = A[3] ^ C[3] ^ cout[2];
		assign cout[3] = (A[3] & C[3]) | cout[2] & (A[3] ^ C[3]);


	        //bit4
		xor(C[4] , sel , B[4]);
		assign S[4] = A[4] ^ C[4] ^ cout[3];
		assign cout[4] = (A[4] & C[4]) | cout[3] & (A[4] ^ C[4]);

	
        	//bit5
		xor(C[5] , sel , B[5]);
		assign S[5] = A[5] ^ C[5] ^ cout[4];
		assign cout[5] = (A[5] & C[5]) | cout[4] & (A[5] ^ C[5]);


	        //bit6
		xor(C[6] , sel , B[6]);
		assign S[6] = A[6] ^ C[6] ^ cout[5];
		assign cout[6] = (A[6] & C[6]) | cout[5] & (A[6] ^ C[6]);

	
	        //bit7
		xor(C[7] , sel , B[7]);
		assign S[7] = A[7] ^ C[7] ^ cout[6];
		assign cout[7] = (A[7] & C[7]) | cout[6] & (A[7] ^ C[7]);


	        //bit8
		xor(C[8] , sel , B[8]);
		assign S[8] = A[8] ^ C[8] ^ cout[7];
		assign cout[8] = (A[8] & C[8]) | cout[7] & (A[8] ^ C[8]);


	        //bit9
		xor(C[9] , sel , B[9]);
		assign S[9] = A[9] ^ C[9] ^ cout[8];
		assign cout[9] = (A[9] & C[9]) | cout[8] & (A[9] ^ C[9]);


	        //bit10
		xor(C[10] , sel , B[10]);
		assign S[10] = A[10] ^ C[10] ^ cout[9];
		assign cout[10] = (A[10] & C[10]) | cout[9] & (A[10] ^ C[10]);


	        //bit11
		xor(C[11] , sel , B[11]);
		assign S[11] = A[11] ^ C[11] ^ cout[10];
		assign cout[11] = (A[11] & C[11]) | cout[10] & (A[11] ^ C[11]);


	        //bit12
		xor(C[12] , sel , B[12]);
		assign S[12] = A[12] ^ C[12] ^ cout[11];
		assign cout[12] = (A[12] & C[12]) | cout[11] & (A[12] ^ C[12]);


	        //bit13
		xor(C[13] , sel , B[13]);
		assign S[13] = A[13] ^ C[13] ^ cout[12];
		assign cout[13] = (A[13] & C[13]) | cout[12] & (A[13] ^ C[13]);


	        //bit14
		xor(C[14] , sel , B[14]);
		assign S[14] = A[14] ^ C[14] ^ cout[13];
		assign cout[14] = (A[14] & C[14]) | cout[13] & (A[14] ^ C[14]);


	        //bit15
		xor(C[15] , sel , B[15]);
		assign S[15] = A[15] ^ C[15] ^ cout[14];
		assign cout[15] = (A[15] & C[15]) | cout[14] & (A[15] ^ C[15]);


	        //bit16
		xor(C[16] , sel , B[16]);
		assign S[16] = A[16] ^ C[16] ^ cout[15];
		assign cout[16] = (A[16] & C[16]) | cout[15] & (A[16] ^ C[16]);


	        //bit17
		xor(C[17] , sel , B[17]);
		assign S[17] = A[17] ^ C[17] ^ cout[16];
		assign cout[17] = (A[17] & C[17]) | cout[16] & (A[17] ^ C[17]);


	        //bit18
		xor(C[18] , sel , B[18]);
		assign S[18] = A[18] ^ C[18] ^ cout[17];
		assign cout[18] = (A[18] & C[18]) | cout[17] & (A[18] ^ C[18]);


	        //bit19
		xor(C[19] , sel , B[19]);
		assign S[19] = A[19] ^ C[19] ^ cout[18];
		assign cout[19] = (A[19] & C[19]) | cout[18] & (A[19] ^ C[19]);


	        //bit20
		xor(C[20] , sel , B[20]);
		assign S[20] = A[20] ^ C[20] ^ cout[19];
		assign cout[20] = (A[20] & C[20]) | cout[19] & (A[20] ^ C[20]);


	        //bit21
		xor(C[21] , sel , B[21]);
		assign S[21] = A[21] ^ C[21] ^ cout[20];
		assign cout[21] = (A[21] & C[21]) | cout[20] & (A[21] ^ C[21]);


	        //bit22
		xor(C[22] , sel , B[22]);
		assign S[22] = A[22] ^ C[22] ^ cout[21];
		assign cout[22] = (A[22] & C[22]) | cout[21] & (A[22] ^ C[22]);


	        //bit23
		xor(C[23] , sel , B[23]);
		assign S[23] = A[23] ^ C[23] ^ cout[22];
		assign cout[23] = (A[23] & C[23]) | cout[22] & (A[23] ^ C[23]);


	        //bit24
		xor(C[24] , sel , B[24]);
		assign S[24] = A[24] ^ C[24] ^ cout[23];
		assign cout[24] = (A[24] & C[24]) | cout[23] & (A[24] ^ C[24]);


	        //bit25
		xor(C[25] , sel , B[25]);
		assign S[25] = A[25] ^ C[25] ^ cout[24];
		assign cout[25] = (A[25] & C[25]) | cout[24] & (A[25] ^ C[25]);

	
        	//bit26
		xor(C[26] , sel , B[26]);
		assign S[26] = A[26] ^ C[26] ^ cout[25];
		assign cout[26] = (A[26] & C[26]) | cout[25] & (A[26] ^ C[26]);


	        //bit27
		xor(C[27] , sel , B[27]);
		assign S[27] = A[27] ^ C[27] ^ cout[26];
		assign cout[27] = (A[27] & C[27]) | cout[26] & (A[27] ^ C[27]);


	        //bit28
		xor(C[28] , sel , B[28]);
		assign S[28] = A[28] ^ C[28] ^ cout[27];
		assign cout[28] = (A[28] & C[28]) | cout[27] & (A[28] ^ C[28]);


	        //bit29
		xor(C[29] , sel , B[29]);
		assign S[29] = A[29] ^ C[29] ^ cout[28];
		assign cout[29] = (A[29] & C[29]) | cout[28] & (A[29] ^ C[29]);


	        //bit30
		xor(C[30] , sel , B[30]);
		assign S[30] = A[30] ^ C[30] ^ cout[29];
		assign cout[30] = (A[30] & C[30]) | cout[29] & (A[30] ^ C[30]);


	        //bit31
		xor(C[31] , sel , B[31]);
		assign S[31] = A[31] ^ C[31] ^ cout[30];
		assign cout[31] = (A[31] & C[31]) | cout[30] & (A[31] ^ C[31]);

	/* write your code here */

endmodule
