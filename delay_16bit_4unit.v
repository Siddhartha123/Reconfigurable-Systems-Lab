`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:01:41 03/11/2019 
// Design Name: 
// Module Name:    delay_16bit_4unit 
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
module delay_16bit_4unit(
    input [15:0] in,
    input en,clk,rst,
    output [15:0] out
    );
	 wire [15:0] t[2:0];
	memory_reg_16bit d1(in,en,clk,rst,t[0]);
	memory_reg_16bit d2(t[0],en,clk,rst,t[1]);
	memory_reg_16bit d3(t[1],en,clk,rst,t[2]);
	memory_reg_16bit d4(t[2],en,clk,rst,out);
endmodule
