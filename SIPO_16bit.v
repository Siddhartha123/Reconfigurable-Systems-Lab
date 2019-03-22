`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:14 02/13/2019 
// Design Name: 
// Module Name:    SIPO_16bit 
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
module SIPO_16bit(
    input [15:0] d,
    input en,clk,rst,
    output [15:0] a7,a6,a5,a4,a3,a2,a1,a0
    );

	memory_reg_16bit X7 (.d(d),  .en(en), .clk(clk), .rst(rst), .q(a7));
	memory_reg_16bit X6 (.d(a7), .en(en), .clk(clk), .rst(rst), .q(a6));
	memory_reg_16bit X5 (.d(a6), .en(en), .clk(clk), .rst(rst), .q(a5));
	memory_reg_16bit X4 (.d(a5), .en(en), .clk(clk), .rst(rst), .q(a4));
	memory_reg_16bit X3 (.d(a4), .en(en), .clk(clk), .rst(rst), .q(a3));
	memory_reg_16bit X2 (.d(a3), .en(en), .clk(clk), .rst(rst), .q(a2));
	memory_reg_16bit X1 (.d(a2), .en(en), .clk(clk), .rst(rst), .q(a1));
	memory_reg_16bit X0 (.d(a1), .en(en), .clk(clk), .rst(rst), .q(a0));
	
endmodule
