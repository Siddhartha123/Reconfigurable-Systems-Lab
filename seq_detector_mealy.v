`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:49 01/30/2019 
// Design Name: 
// Module Name:    seq_detector_mealy1 
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
module seq_detector_mealy(
    input d,clk,rst,
    output reg out
    );
	 reg[1:0] state,next_state;
	 reg out1;
	 parameter s0=0,s1=1,s2=2,s3=3;
	 initial begin
	 state=s0;
	 next_state=s0;
	 out=0;
	 end
always@(state or d)
begin
	case(state)
		s0: begin
			out=0;
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
			out=0;
		end
		s3: begin
			if(d)	next_state=s1;
			if(~d) begin
			next_state=s2; 
			out=1;
			end
		end
	endcase
end

always @(posedge clk)
begin
	if(rst) begin
		state=s0;
	end	
	else begin
		state=next_state;
	end
end
//assign out=!rst & out1;
endmodule