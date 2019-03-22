`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:57 03/06/2019 
// Design Name: 
// Module Name:    complex_multiplier_FFT 
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
module complex_multiplier_FFT(
    input [15:0] a,b,
	 input en,clk,rst,ctrl,
    output [15:0] r,i
    );
	 wire [15:0] t1,t2,r1,i1;
	adder_16bit A1(b,a,ctrl,en,clk,rst,t1);  
	//memory_reg_16bit d1(t1,en,clk,rst,c);//c = a+b
	
	adder_16bit A2(b,a,~ctrl,en,clk,rst,t2); 
	//memory_reg_16bit d1(t2,en,clk,rst,d);//d = -(a-b) 
	
	constant_multiplier_16bit_1byroot2 X1(t1,en,clk,rst,r1);
	constant_multiplier_16bit_1byroot2 X2(t2,en,clk,rst,i1);
	assign r=r1;
	assign i=i1;
endmodule
