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
---  Module Name: Control Unit
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define AAA 3'b001 // IDLE
`define BBB 3'b010 // ACTIVE
`define CCC 3'b011 // REQUEST
`define DDD 3'b100 // STORE
`define EEE 3'b101 // TRAP
`define FFF 3'b111 // FFF

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111


module ControlUnit (
	input         arst      , // async  reset
	input         clk       , // clock  posedge
	input         request   , // request input (asynch) 
	input         confirm   , // confirm input 
	input  [ 1:0] password  , // password from user
	input  [ 1:0] syskey    , // key  from memoty unit
	input  [34:0] configin  , // conf from user
	output [34:0] configout , // conf to memory unit
	output        write_en  , // conf mem write enable
	output [ 2:0] dbg_state   // current state (debug)
	);

	/* write your code here */
	reg [2:0] state = `AAA;
	wire pass;
	reg enable;
	reg [34:0] data;
	PassCheckUnit PC(password, syskey , pass);
	
	always @ (posedge clk or posedge arst or negedge request)begin
		if(arst == 1'b1 || request == 1'b0)begin
			state = `AAA;
		end
		else
			case(state)
				`AAA: 
				 if(request == 1'b0) 
						begin 
							state <= `AAA;
						end 
				 else
						begin 
							state <= `BBB;
						end
						
				`BBB: 
				if(confirm == 1'b1)
					begin
						if(pass) state <= `CCC;
						else state <= `EEE;
					end
					
				`CCC: 
				if(confirm == 1'b1)
					begin
						enable <= 1'b1;
						state <= `DDD;
						data <= configin;
					end
				`DDD: state <=`DDD;
				`EEE:	state <=`EEE;
				default: 
					state <= `FFF;
			endcase
			
	end
	/* write your code here */
	assign configout = data;
	assign write_en = enable;
	assign dbg_state = state;

endmodule
