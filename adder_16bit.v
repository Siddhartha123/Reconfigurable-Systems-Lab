`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:01 02/13/2019 
// Design Name: 
// Module Name:    adder_16bit 
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
module adder_16bit(
    input [15:0] a,b,
	 input ctrl,
    output [15:0] sum,
    output c );
	 wire [15:1] carry;
	 full_adder X1(a[0],ctrl^b[0],ctrl,sum[0],carry[1]);
	 full_adder X2(a[1],ctrl^b[1],carry[1],sum[1],carry[2]);
	 full_adder X3(a[2],ctrl^b[2],carry[2],sum[2],carry[3]);
	 full_adder X4(a[3],ctrl^b[3],carry[3],sum[3],carry[4]);
	 full_adder X5(a[4],ctrl^b[4],carry[4],sum[4],carry[5]);
	 full_adder X6(a[5],ctrl^b[5],carry[5],sum[5],carry[6]);
	 full_adder X7(a[6],ctrl^b[6],carry[6],sum[6],carry[7]);
	 full_adder X8(a[7],ctrl^b[7],carry[7],sum[7],carry[8]);
	 full_adder X9(a[8],ctrl^b[8],carry[8],sum[8],carry[9]);
	 full_adder X10(a[9],ctrl^b[9],carry[9],sum[9],carry[10]);
	 full_adder X11(a[10],ctrl^b[10],carry[10],sum[10],carry[11]);
	 full_adder X12(a[11],ctrl^b[11],carry[11],sum[11],carry[12]);
	 full_adder X13(a[12],ctrl^b[12],carry[12],sum[12],carry[13]);
	 full_adder X14(a[13],ctrl^b[13],carry[13],sum[13],carry[14]);
	 full_adder X15(a[14],ctrl^b[14],carry[14],sum[14],carry[15]);
	 full_adder X16(a[15],ctrl^b[15],carry[15],sum[15],c);
endmodule
