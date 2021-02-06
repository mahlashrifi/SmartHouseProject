`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:43 01/22/2021
// Design Name:   TemperatureCalculator
// Module Name:   C:/Users/fama/Desktop/Study 3rd Term/LC Lab/ProjectTest/Module01/temp_test.v
// Project Name:  Module01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module temp_test;

	// Inputs
	reg [31:0] tc_base;
	reg [7:0] tc_ref;
	reg [15:0] adc_data;

	// Outputs
	wire [31:0] tempc;
	wire [31:0] drd;

	// Instantiate the Unit Under Test (UUT)
	TemperatureCalculator uut (
		.tc_base(tc_base), 
		.tc_ref(tc_ref), 
		.adc_data(adc_data), 
		.tempc(tempc),
		.drd(drd)
	); 

	initial begin
		// Initialize Inputs
		tc_base = 32'b00000000000000000000000000001000;
		tc_ref = 32'b00000000000000000000000000010000;
		adc_data = 32'b00000000000000000000000000001000;

		// Wait 100 ns for global reset to finish
		#100;
		
		tc_base = 32'b10101010101010101010101010101010;
		tc_ref = 8'b11000110;
		adc_data = 16'b1010101010101010;
         
		// Add stimulus here

	end
      
endmodule

