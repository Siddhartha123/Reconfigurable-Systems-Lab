`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:34 03/13/2019 
// Design Name: 
// Module Name:    PG_FFT 
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
module PG_FFT(
    input start,stop,clk,rst,
    output out
    );
	 wire q,d,s;
	 mux_2_1 m1(q,1'b0,stop,d);
	 dff d1 (d,clk,rst,1'b1,s);
	 mux_2_1 m2(s,1'b1,start,q);
	 assign out=q;
endmodule
