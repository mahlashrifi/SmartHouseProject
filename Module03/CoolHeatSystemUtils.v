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
---  Module Name: Cool Heat System Utils
---  Description: Module3:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/




module counter (
	input [7:0] data,
	output reg [3:0] Q
);
	
	integer i;
	
	always@(data) begin
		Q = 0;
		for(i = 0 ; i < 8 ; i = i + 1)
			Q = Q + data[i];
	end
	
endmodule

	
/************** Design Your Own Modules Above **************/
/***********************************************************/
