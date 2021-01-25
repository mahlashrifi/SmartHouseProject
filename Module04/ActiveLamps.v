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
---  Module Name: Active Lights
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module ActiveLamps (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
    input  [3:0] lenght     , // room length  [square room lenght ]
	output [3:0] active_lights  // number of active light
);

	if(tcode == 4'b0001)		assign active_lights = 4'b0000;
	if(tcode == 4'b0010)		assign active_lights = 4'b0000;
	if(tcode == 4'b0100)		assign active_lights = lenght*lenght / 4 * lenght;
	if(tcode == 4'b1000)		assign active_lights = ulight;
	if(tcode == 4'b0000)		assign active_lights = 4'b0000;
		

endmodule
