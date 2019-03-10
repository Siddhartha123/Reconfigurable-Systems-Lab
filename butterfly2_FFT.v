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
    output [15:0] r1,i1,r2,i2 );
	assign r1=r;
	assign i1=i;
	assign r2=r;
	assign i2=-i;
endmodule
