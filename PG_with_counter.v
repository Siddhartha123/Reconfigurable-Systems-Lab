`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:56 03/13/2019 
// Design Name: 
// Module Name:    PG_with_counter 
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
module PG_with_counter(
	input start,clk,rst,
	input [3:0] limit,
	output out,stop,
	output [3:0] count
    );
	 wire tc,conter_en;
	 wire [3:0] b;
	PG_FFT pg1(start,tc,clk,rst,conter_en);
	four_bit_counter c1(clk,conter_en,rst,1'b0,b,limit,count,stop);
	assign b=4'b0000;
	assign tc=stop;
	assign out=conter_en;
endmodule
