`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:31 01/28/2021
// Design Name:   FanSpeed
// Module Name:   C:/Users/fama/Desktop/Study 3rd Term/LC Lab/ProjectTest/Module01/tb_FanSpeed.v
// Project Name:  Module01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FanSpeed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FanSpeed;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;

	// Outputs
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	FanSpeed uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.pwm_data(pwm_data)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		speed = 8'b00000100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial
	forever
		 begin
			#1 clk = !clk;
		end
      
endmodule

