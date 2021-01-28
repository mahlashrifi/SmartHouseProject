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
---  Module Name: Fan Speed (PWM)
---  Description: Module3: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module FanSpeed (
	input        arst     , // reset [asynch]  
	input        clk      , // clock [posedge] 
	input  [7:0] speed    , // speed [duty-cycle]  
	output       pwm_data   // data  [output]
);

	/* write your code here */
	reg isOne = 1'b1;
	reg data;
	integer i = 0;
	
	always@(posedge clk or posedge arst)
		begin
	
			if(arst)
				begin
					i = 0;
		         isOne = 1'b1;
				end	 
				
			else
	   
				begin
			
					if(i == speed)  isOne = 1'b0;
					if(i == 255)
						begin
							i =0 ;
							isOne = 1'b1;
						end
					
					
	
					if(isOne)
						data = 1'b1;
					else
						data = 1'b0;
				
					i = i+1;
				end
		end
	assign pwm_data = data;


endmodule
