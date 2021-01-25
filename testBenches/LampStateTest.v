`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:08:01 01/24/2021
// Design Name:   LampState
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module4/LampStateTest.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LampState
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LampStateTest;

	// Inputs
	reg [3:0] active_lights;

	// Outputs
	wire [15:0] lights_state;

	// Instantiate the Unit Under Test (UUT)
	LampState uut (
		.active_lights(active_lights), 
		.lights_state(lights_state)
	);

	initial begin
		// Initialize Inputs
		active_lights = 4'b0000;
		#10;
		
		active_lights = 4'b0000;
		#10;

		active_lights = 4'b1010;
		#10;

		active_lights = 4'b0000;
		#10;

		active_lights = 4'b1111;
		#10;

		active_lights = 4'b0011;
		#10;

		active_lights = 4'b0110;
		#10;

		active_lights = 4'b1000;
		#10;		

		// Wait 100 ns for global reset to finish
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

