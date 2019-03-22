`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:29 03/13/2019 
// Design Name: 
// Module Name:    mux_16bit 
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
module mux_16bit(
    input [15:0] a,b,
    input select,
    output [15:0] out
    );
	 assign out= (~select) ? a : b;

endmodule
