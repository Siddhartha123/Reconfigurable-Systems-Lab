`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:53 02/13/2019 
// Design Name: 
// Module Name:    constant_multiplier_16bit_1byroot2 
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
module constant_multiplier_16bit_1byroot2(
    input [15:0] in,
    output [15:0] out
    );
	 wire[15:0] o [10:1];
	 wire[15:0] t1,t2,t3,t4,t5;
constant_multiplier_16bit_RSH1 X1(in,o[1]);
constant_multiplier_16bit_RSH1 X2(o[1],o[2]);
constant_multiplier_16bit_RSH1 X3(o[2],o[3]);
constant_multiplier_16bit_RSH1 X4(o[3],o[4]);
constant_multiplier_16bit_RSH1 X5(o[4],o[5]);
constant_multiplier_16bit_RSH1 X6(o[5],o[6]);
constant_multiplier_16bit_RSH1 X7(o[6],o[7]);
constant_multiplier_16bit_RSH1 X8(o[7],o[8]);

adder_16bit A1(o[1],o[3],0,t1);
//memory_reg_16bit d1(t1,en,clk,rst,sum[0]);
adder_16bit A2(o[4],o[6],0,t2);
//memory_reg_16bit d2(t2,en,clk,rst,sum[1]);
adder_16bit A3(t1,t2,0,t3);
//memory_reg_16bit d3(t3,en,clk,rst,sum[2]);
//memory_reg_16bit d4(o[8],en,clk,rst,t4);
//memory_reg_16bit d5(t4,en,clk,rst,t5);
adder_16bit A4(t3,o[8],0,out);
endmodule
