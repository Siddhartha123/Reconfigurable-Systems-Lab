`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:07 03/13/2019 
// Design Name: 
// Module Name:    PISO_16bit 
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
module PISO_16bit(
    input [15:0] x7,x6,x5,x4,x3,x2,x1,x0,
    input en1,clk,rst,sel,
    output [15:0] out
    );
	 wire [15:0] t[14:0];
	 wire en;
	 memory_reg_16bit d7(x7,en,clk,rst,t[0]);
	 mux_16bit m6(t[0],x6,sel,t[1]);
	 memory_reg_16bit d6(t[1],en,clk,rst,t[2]);
	 mux_16bit m5(t[2],x5,sel,t[3]);
	 memory_reg_16bit d5(t[3],en,clk,rst,t[4]);
	 mux_16bit m4(t[4],x4,sel,t[5]);
	 memory_reg_16bit d4(t[5],en,clk,rst,t[6]);
	 mux_16bit m3(t[6],x3,sel,t[7]);
	 memory_reg_16bit d3(t[7],en,clk,rst,t[8]);
	 mux_16bit m2(t[8],x2,sel,t[9]);
	 memory_reg_16bit d2(t[9],en,clk,rst,t[10]);
	 mux_16bit m1(t[10],x1,sel,t[11]);
	 memory_reg_16bit d1(t[11],en,clk,rst,t[12]);
	 mux_16bit m0(t[12],x0,sel,t[13]);
	 memory_reg_16bit d0(t[13],en,clk,rst,t[14]);
	 assign en = sel | en1;
	 assign out = t[14];
endmodule
