`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:43 01/16/2019 
// Design Name: 
// Module Name:    multiplier_stage 
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

module pipelined_stage(
   input wire a0,a1,a2,a3,a4,a5,a6,a7,a8,
	output y0,y1,y2,y3,y4,y5,
	input wire clk,rst,en
    );
	 //parameter en=1'b1,rst=1'b0;
	 wire [9:0] a;
	 
	dff X3(a0,clk,rst,en,a[0]);
	dff X4(a1,clk,rst,en,a[1]);
	dff X5(a2,clk,rst,en,a[2]);
	dff X6(a3,clk,rst,en,a[3]);
	dff X7(a4,clk,rst,en,a[4]);
	dff X8(a5,clk,rst,en,a[5]);
	dff X9(a6,clk,rst,en,a[6]);
	dff X10(a7,clk,rst,en,a[7]);
	dff X11(a8,clk,rst,en,a[8]);
	
	full_adder X0(a[0],a[1],a[2],y0,y1);
	full_adder X1(a[3],a[4],a[5],y2,y3);
	full_adder X2(a[6],a[7],a[8],y4,y5);
	
	
endmodule
