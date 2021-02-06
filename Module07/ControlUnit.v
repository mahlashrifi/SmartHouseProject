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
	reg [2:0] state;
	parameter A = 3'b000 , B = 3'b001 , C = 3'b101 , D = 3'b110 , E = 3'b111;
	wire pass;
	reg enable;
	reg [34:0] data;
	PassCheckUnit PC(password, syskey , pass);
	
	always @ (posedge clk or posedge arst or negedge request)begin
		if(arst == 1'b1 || request == 1'b0)begin
			state = A;
		end
		else
			case(state)
				A: if(request == 1'b0) begin 
						state <= A;
					end else begin 
						state <= B;
					end
				B: //if(confirm == 1'b1 && password == syskey ) begin 
						//state <= C;
					//end else begin
						//state <= E;
					//end
					if(confirm == 1'b1)begin
						if(pass) state <= C;
						else state <= E;
					end
				C: if(confirm == 1'b1)begin
						enable <= 1'b1;
						state <= D;
						data <= configin;
					end
				D: state <=D;
				E:	state <=E;
				default: 
					state <= A;
			endcase
			
	end
	/* write your code here */
	assign configout = data;
	assign write_en = enable;
	assign dbg_state = state;

endmodule
