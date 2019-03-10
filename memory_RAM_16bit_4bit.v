`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:54 02/06/2019 
// Design Name: 
// Module Name:    memory_RAM_16bit_4bit 
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
module memory_RAM_16bit_4bit(
    input [15:0] din,
    input en,wen,clk,
    input [3:0] address,
    output reg [15:0] out
    );
	 reg[15:0] mem [15:0];
	 /*integer i;
	initial begin
	
		out=0;
		for(i=0;i<16;i=i+1) begin
			for(i=0;i<16;i=i+1) begin
			mem[i]=0;
		end
	end*/
	always @(posedge clk) begin
		if(en) begin
			if(wen) begin
				mem[address][15:0]=din;
			end
			else begin
				out=mem[address][15:0];
			end
		end
	end

endmodule
