`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:57 03/12/2019 
// Design Name: 
// Module Name:    memory_ROM_using_read 
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
module memory_ROM_using_read(
    input en,clk,
    input [3:0] address,
    output reg [15:0] out
    );
	 reg [15:0] mem [15:0];
	 initial begin
		$readmemh("read.txt",mem);
	 end
	 
	 always @(posedge clk) begin
		if(en) out=mem[address];
		else out=0;
	 end

endmodule
