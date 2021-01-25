`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:47:13 01/25/2021
// Design Name:   WindowShadeDegree
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module4/WindowShadeDegreeTest.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WindowShadeDegree
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module WindowShadeDegreeTest;

	// Inputs
	reg [3:0] tcode;
	reg [3:0] ulight;

	// Outputs
	wire [3:0] wshade;

	// Instantiate the Unit Under Test (UUT)
	WindowShadeDegree uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.wshade(wshade)
	);

	initial begin
		// Initialize Inputs
		tcode = 4'b0001; ulight = 4'b1010;
		#10;
		
		tcode = 4'b0010; ulight = 4'b1110;
		#10;
		
		tcode = 4'b0010; ulight = 4'b0110;
		#10;
		
		tcode = 4'b0100; ulight = 4'b1010;
		#10;
		
		tcode = 4'b0100; ulight = 4'b1111;
		#10;
		
		tcode = 4'b0100; ulight = 4'b0000;
		#10;
		
		tcode = 4'b0100; ulight = 4'b1110;
		#10;
		
		tcode = 4'b1000; ulight = 4'b1100;
		#10;
		
		tcode = 4'b0000; ulight = 4'b1010;
		#10;
		
		
	
		
		// Wait 100 ns for global reset to finish
		#100;
		$finish;
        


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

