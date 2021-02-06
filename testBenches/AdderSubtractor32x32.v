`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:44:40 01/28/2021
// Design Name:   AdderSubtractor32x32
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module1/Module1/AdderSubtractor32x32.v
// Project Name:  Module1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AdderSubtractor32x32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AdderSubtractor32x32Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg sel;

	// Outputs
	wire [31:0] S;

	// Instantiate the Unit Under Test (UUT)
	AdderSubtractor32x32 uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.S(S)
	);

	initial begin
		
	  A = 32'b00000000110101110000101110001011;    //decimal : 14093195
         B = 32'b00000000000000000000101110001011;   // decimal : 2955 
	  
	  // sum should be :14,096,150 
	  // sum in binary : 1101 0111 0001 0111 0001 0110
	  
	 
	  sel = 1'b0;
	  
	  #30 
	  sel = 1'b1;
	   
     // sum should be :14,090,240
	  // sum in binary : 1101 0111 0000 0000 0000 0000
		
		#30;
		
		A = 32'b00000000110101110000101110001011;    //decimal : 14093195
      B = 32'b10000000000000000000101110001011;   // decimal : -2,147,483,648
	  
	  // sum should be :-2,147,480,693
	  // sum in binary : 1111 1110 0101 0001 1101 0001 1101 010
	  
	 
	  sel = 1'b0;
	  
	  #30 
      $finish;  
	

	end
      
endmodule

