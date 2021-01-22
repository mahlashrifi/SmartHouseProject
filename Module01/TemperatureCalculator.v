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
---  Module Name: Temperature Calculator
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns 

module TemperatureCalculator (
	input  [31:0] tc_base  , // base [environment degree ]
	input  [ 7:0] tc_ref   , // ref  [system work voltage]
	input  [15:0] adc_data , // adc  [sensor digital data]
	output [31:0] tempc    , // temp [temperature celsius]
	output [31:0] drd
);
 
	/* write your code here */
	wire [15:0] tc_ref_squered;
	Multiplier8x8 M8bit(tc_ref , tc_ref , tc_ref_squered);
	wire [15:0] adc_data_unsigned;
	assign adc_data_unsigned[15] = 1'b0;
	assign adc_data_unsigned[14:0] = adc_data[14:0]; 
	wire [31:0] data_refs;
	Multiplier16x16 M16bit(adc_data_unsigned , tc_ref_squered , data_refs);
	wire [31:0] data_refs_devided;
	assign data_refs_devided[25:0] = data_refs[31:6];
	assign data_refs_devided[31:26]  = {1'b0};
	assign drd = data_refs_devided;
	AdderSubtractor32x32 AS32bit(data_refs_devided , tc_base , adc_data[15] , tempc);
 
	/* write your code here */

endmodule
