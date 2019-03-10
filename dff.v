`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:38 01/23/2019 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input D,
    input clk,
    input rst,
    input en,
    output Q
    );
	 reg q1;
	 initial begin
	 q1=0;
	 end
	 always @(posedge clk)
	 begin
		 if(rst) 
			q1=0;
		 else 
			q1=D;						
	 end
	assign Q=q1 & en;

endmodule
