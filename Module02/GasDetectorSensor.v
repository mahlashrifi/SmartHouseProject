/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Gas Detector Sensor
---  Description: Module2:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module GasDetectorSensor (
	input        arst     , // async reset
	input        clk      , // clock posedge
	input        din      , // input data 
	output [2:0] dout  , 	// output data
	output [11:0] seq

);

		reg [11:0] sequence = 12'b000000000000;
		reg [2:0] out = 3'b000;
		
		assign dout = out;
	   assign seq = sequence;
		
		always @(posedge clk or posedge arst)
		begin
		
		   sequence = {sequence[10:0],din};
			
			if(arst == 1'b1)	out = 3'b000;
			
			else
				begin
				
					
					
					if(sequence[9:0] == 10'b1011101010)	  out ={dout[1:0], 1'b1};
					if(sequence[11:0] == 12'b101010010011)	out = {dout[2], 1'b1, dout[0]};
					if(sequence[8:0] == 12'b100100100)	out = {1'b1, dout[1], dout[0]};
					

					
				end
				
		end
	/* write your code here */

endmodule
