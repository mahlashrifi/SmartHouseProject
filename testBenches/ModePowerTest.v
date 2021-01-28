`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:38:10 01/28/2021
// Design Name:   ModePower
// Module Name:   C:/Users/My NoteBook/Desktop/SmartHouseProject/verilog/Module3/Module3/ModePowerTest.v
// Project Name:  Module3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModePower
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ModePowerTest;

	// Inputs
	reg [7:0] chs_conf;

	// Outputs
	wire [3:0] chs_power;
	wire chs_mode;

	// Instantiate the Unit Under Test (UUT)
	ModePower uut (
		.chs_conf(chs_conf), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode)
	);

	initial begin
		// Initialize Inputs
		chs_conf =8'b11010110;
		#20;
		
		chs_conf =8'b01110110;
		#20;
		
		chs_conf =8'b00000000;
		#20;
				
		chs_conf =8'b01110110;
		#20;
				
		chs_conf =8'b11111111;
		#20;
				
		chs_conf =8'b10010010;
		#20;
				
		chs_conf =8'b00010110;
		#20;
				
		chs_conf =8'b01110010;
		#20;
				
		chs_conf =8'b11011110;  
		#20;
				

		
		

		$finish;
        
		// Add stimulus here

	end
      
endmodule

