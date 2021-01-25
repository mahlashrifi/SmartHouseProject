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
---  Module Name: Window Shade Degree
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


/*function [3:0] shadeLevel (input[3:0] userLight);
	
	begin
	   assign shadeLevel = 4'b0000;
		
		always @( userLight )
			help = active_lights;
	
	   integer out = help/100*16 ;
	   if(out == 16 ) out = 15;
		
		
		if(out > 7)
			begin
				shadeLevel[3] = 1'b1;
				out = out - 8;
			end
			
		if(out > 3)
	   	begin
				shadeLevel[2] = 1'b1;
				out = out - 4;
			end
		
	   if(out > 1)
	   	begin
				shadeLevel[1] = 1'b1;
				out = out - 2;
			end		
		
		
		if(out == 1)
	   	begin
				shadeLevel[0] = 1'b1;
				out = out - 1;
			end
		
	end
endfunction	*/


module WindowShadeDegree (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
	output [3:0] wshade   // shade level  [window shade level ]
);


  
  assign  wshade = tcode == 4'b0001 ? 4'b1111 :
						 tcode == 4'b0010 ? 4'b1011 :
					    tcode == 4'b0100 ? ulight :
					    tcode == 4'b1000 ? 4'b0000 :
				       4'b0000;
	
		

endmodule
