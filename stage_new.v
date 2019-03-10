`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:26 01/16/2019 
// Design Name: 
// Module Name:    stage_new 
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
module stage_new(
	input a0,a1,a2,a3,a4,a5,a6,a7,a8,
	output y0,y1,y2,y3,y4,y5
    );

	full_adder X0(a0,a1,a2,y0,y1);
	full_adder X1(a3,a4,a5,y2,y3);
	full_adder X2(a6,a7,a8,y4,y5);
endmodule
