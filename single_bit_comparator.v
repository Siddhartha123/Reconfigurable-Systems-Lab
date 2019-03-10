`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:11 01/16/2019 
// Design Name: 
// Module Name:    single_bit_comparator 
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
module single_bit_comparator(
    input  a,
    input  b,
    output  gt,
    output  eq,
    output  lt
    );
	assign gt = a & (~b);
	assign eq = ~(a^b);
	assign lt = (~a) & b;

endmodule
