`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:39:34 01/25/2021
// Design Name:   ActiveLamps
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module4/ActiveLampsTest.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ActiveLamps
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ActiveLampsTest;

	// Inputs
	reg [3:0] tcode;
	reg [3:0] ulight;
	reg [3:0] lenght;

	// Outputs
	wire [3:0] active_lights;

	// Instantiate the Unit Under Test (UUT)
	ActiveLamps uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.lenght(lenght), 
		.active_lights(active_lights)
	);

	initial begin
		// Initialize Inputs
		tcode = 4'b0001; ulight = 4'b1010; lenght = 0110; 
		#10;

		tcode = 4'b0010; ulight = 4'b1010; lenght = 0110; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 0110; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 1111; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 1011; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 0010; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 1110; 
		#10;

		tcode = 4'b0100; ulight = 4'b1010; lenght = 0101; 
		#10;

		tcode = 4'b1000; ulight = 4'b1010; lenght = 0110; 
		#10;

		tcode = 4'b1000; ulight = 4'b1110; lenght = 1110; 
		#10;

		tcode = 4'b1000; ulight = 4'b0111; lenght = 1111; 
		#10;

		tcode = 4'b0000; ulight = 4'b1010; lenght = 0010; 
		#10;		

		// Wait 100 ns for global reset to finish
		#20;
        
		$finish;
		// Add stimulus here

	end
      
endmodule

