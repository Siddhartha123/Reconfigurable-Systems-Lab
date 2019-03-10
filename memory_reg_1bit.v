`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:17 02/06/2019 
// Design Name: 
// Module Name:    memory_reg_1bit 
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
module memory_reg_16bit(
	 input [15:0] d,
    input en,clk,rst,
    output reg [15:0] q
    );
	 reg [15:0] mem;
initial q=0;
always@(posedge clk) begin
	if(rst)	q=0;
	else begin
		if(en)
			q=d;
	end
end

endmodule
