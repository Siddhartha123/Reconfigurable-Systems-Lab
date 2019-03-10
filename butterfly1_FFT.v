`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:25 03/06/2019 
// Design Name: 
// Module Name:    butterfly1_FFT 
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
module butterfly1_FFT(
    input [15:0] a,b,
	 input ctrl,
    output [15:0] c,d
    );
	adder_16bit A1(b,a,ctrl,c);
	adder_16bit A2(a,b,~ctrl,d);
endmodule
