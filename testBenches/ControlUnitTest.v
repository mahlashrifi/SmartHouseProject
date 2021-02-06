`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:30:04 02/06/2021
// Design Name:   ControlUnit
// Module Name:   C:/Users/fama/Desktop/Study 3rd Term/LC Lab/test/test/tb_control.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_control;

	// Inputs
	reg arst;
	reg clk;
	reg request;
	reg confirm;
	reg [1:0] password;
	reg [1:0] syskey;
	reg [34:0] configin;

	// Outputs
	wire [34:0] configout;
	wire write_en; 
	wire [2:0] dbg_state;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.arst(arst), 
		.clk(clk), 
		.request(request), 
		.confirm(confirm), 
		.password(password), 
		.syskey(syskey), 
		.configin(configin), 
		.configout(configout),  
		.write_en(write_en), 
		.dbg_state(dbg_state)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		request = 0;
		confirm = 0;
		configin = 0;

		 
        
		// Add stimulus here
		request = 1'b1;
		#30;
		password = 2'b10;
		syskey = 2'b11;
		#10;
		confirm = 1'b1;
		#40;
		confirm =1'b0;
		#35;
		request = 1'b0;
		#15;
		request = 1'b1;
		#10;
		password = 2'b11;
		#10;
		confirm = 1'b1;
		#10;
		confirm = 1'b0;
		
		#20;
		configin = 35'b100001000010000001110;
		#20;
		confirm = 1'b1;

	end
	initial begin
	forever
		#10 clk = ~clk;
	end
      
endmodule

