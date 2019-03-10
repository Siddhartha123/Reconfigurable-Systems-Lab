`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:03 02/13/2019 
// Design Name: 
// Module Name:    constant_multiplier_16bit_RSH1 
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
module constant_multiplier_16bit_RSH1(
    input [15:0] in,
    output [15:0] out
    );
	assign out[0]=in[1];
	assign out[1]=in[2];
	assign out[2]=in[3];
	assign out[3]=in[4];
	assign out[4]=in[5];
	assign out[5]=in[6];
	assign out[6]=in[7];
	assign out[7]=in[8];
	assign out[8]=in[9];
	assign out[9]=in[10];
	assign out[10]=in[11];
	assign out[11]=in[12];
	assign out[12]=in[13];
	assign out[13]=in[14];
	assign out[14]=in[15];
	assign out[15]=in[15];
endmodule
