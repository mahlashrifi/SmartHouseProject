`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:05 01/28/2021
// Design Name:   Multiplier8x8
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module1/Module1/Multiplier8x8Test.v
// Project Name:  Module1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier8x8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier8x8Test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [15:0] P;

	// Instantiate the Unit Under Test (UUT)
	Multiplier8x8 uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
		// Initialize Inputs
		A = 8'b10110110;   //decimal : 182
		B = 8'b10001011;   // decimal : 139
		
		// result = 25,298       binary : 110 0010 1101 0010
		
		#30;
		
      A = 8'b01101100;   //decimal : 108
		B = 8'b10001011;   // decimal : 139
		
	   // result = 15,012       binary : 11 1010 1010 0100
		
		#30;
        
	   A = 8'b01101100;   //decimal : 108
		B = 8'b00110100;   // decimal : 52
		
		//result = 5,616         binary : 1 0101 1111 0000
		
		#30;
      $finish;		
		  
	
	end
      
endmodule

