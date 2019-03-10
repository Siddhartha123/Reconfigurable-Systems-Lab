`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:23:49 01/23/2019 
// Design Name: 
// Module Name:    four_bit_counter 
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
module four_bit_counter(
    input clk,
    input en,
    input rst,
	 input load,
	 input [3:0] b,l,
    output [3:0] d,
	 output tc
    );
	 wire d3,d2,d1,d0;
	 wire rst_or_limit;
	dff X3(d3,clk,rst_or_limit,en,d[3]);
	dff X2(d2,clk,rst_or_limit,en,d[2]);
	dff X1(d1,clk,rst_or_limit,en,d[1]);
	dff X0(d0,clk,rst_or_limit,en,d[0]);

	eq_comparator X4(d,l,tc);
	assign rst_or_limit=rst | tc;
	
	assign d0=(~load) & (~d[0]) | (load) & b[0];
	assign d1=(~load) & (d[0]^d[1]) | (load) & b[1];
	assign d2=(~load) & (d[2]^(d[0]&d[1])) | (load) & b[2];
	assign d3=(~load) & (d[3]^(d[2]&d[1]&d[0])) | (load) & b[3];
	
endmodule
