`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:49 01/30/2019 
// Design Name: 
// Module Name:    seq_detector_mealy 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seq_detector_moore(
    input d,clk,rst,
    output reg out );
	 
	 reg[2:0] state,next_state;
	 parameter s0=0,s1=1,s2=2,s3=3,s4=4;
	 
	initial begin
		state=s0;
		next_state=s0;
		out=0;
	end
	 
	always@(state or d) begin
		case(state)
			s0: begin
				if(d)	next_state=s1;
				if(~d) next_state=s0;
			end
			s1: begin
				if(d)	next_state=s1;
				if(~d) next_state=s2;
			end
			s2: begin
				if(d)	next_state=s3;
				if(~d) next_state=s0;
			end
			s3: begin
				if(d)	next_state=s1;
				if(~d) next_state=s4; 
			end
			s4: begin
				if(d)	next_state=s0;
				if(~d) next_state=s0;
			end
		endcase
	end

	always @(posedge clk)
	begin
		if(rst) begin
			state=s0;
			out=0;
		end
		else begin
			state=next_state;
			if(state==s4) out=1;
			else out=0;
		end
	end
endmodule
