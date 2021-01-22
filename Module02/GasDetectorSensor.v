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
	output [2:0] dout       // output data
);

		reg [11:0] sequence = 12'b000000000000;
		
		always @(posedge clk or posedge rst)
		begin
		
			if(rst == 1'b1)	dout = 3'b000;
			
			else
				begin
				
					sequence = {sequence[10:0], din};
					
					if(sequence[9:0] == 10'b1011101010)	dout[0] = 1;
					if(sequence[11:0] == 12'b101010010011)	dout[1] = 1;
					if(sequence[8:0] == 12'b100100100)	dout[2] = 1;
					
				end
				
		end
	/* write your code here */

endmodule
