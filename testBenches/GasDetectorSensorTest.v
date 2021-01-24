`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:39:37 01/24/2021
// Design Name:   GasDetectorSensor
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/GasDetector/GasDetectorSensorTest.v
// Project Name:  GasDetector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GasDetectorSensor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GasDetectorSensorTest;

	// Inputs
	reg arst;
	reg clk;
	reg din;

	// Outputs
	wire [2:0] dout;
   wire [11:0] seq;

	// Instantiate the Unit Under Test (UUT)
	GasDetectorSensor uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.dout(dout),
		.seq(seq)
		
	);
	
	
	initial
     begin
      clk = 1'b1;
      #600 ;
		$finish;
   end

   always
     #10 clk = ~clk;

	initial begin
		// Initialize Inputs
	   arst = 1'b0; din = 1'b0;
		#10;
		
	   arst = 1'b0; din = 1'b0;
		#8;	
		
	   arst = 1'b0; din = 1'b1;
		#20;	
		
	   arst = 1'b0; din = 1'b0;
		#8;
		
	   arst = 1'b0; din = 1'b1;
		#20;

	   arst = 1'b0; din = 1'b1;
		#20;

	   arst = 1'b0; din = 1'b1;
		#20;

	   arst = 1'b0; din = 1'b0;
		#20;

	   arst = 1'b0; din = 1'b1;
		#20;

	   arst = 1'b0; din = 1'b0;
		#20;

	   arst = 1'b0; din = 1'b1;
		#20;

	   arst = 1'b0; din = 1'b0;
		#20;

	   arst = 1'b0; din = 1'b0;
		#20;		
		
	   arst = 1'b0; din = 1'b1;
		#20;		
		
	   arst = 1'b0; din = 1'b0;
		#20;	
		
	   arst = 1'b0; din = 1'b0;
		#20;		
		
	   arst = 1'b0; din = 1'b1;
		#20;		
		
	   arst = 1'b0; din = 1'b0;
		#20;			
		
	   arst = 1'b0; din = 1'b0;
		#20;		

		
		// Wait 100 ns for global reset to finish
		#100;
      $finish;
		// Add stimulus here
		

	end
      
endmodule

