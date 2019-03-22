`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:00 03/06/2019 
// Design Name: 
// Module Name:    butterfly2_FFT 
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
module butterfly2_FFT(
    input [15:0] r,i,
	 input en,clk,rst,
    output [15:0] r1,i1,r2,i2 );
	 wire [15:0] _i;
	 memory_reg_16bit R1(r,en,clk,rst,r1);
	 memory_reg_16bit R2(i,en,clk,rst,i1);
	 memory_reg_16bit R3(r,en,clk,rst,r2);
	 memory_reg_16bit R4(i,en,clk,rst,_i);
	 assign i2=-_i;
endmodule
