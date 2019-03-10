`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:57 02/06/2019 
// Design Name: 
// Module Name:    memory_ROM_16bit_4bit 
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
module memory_ROM_16bit_4bit(
    input en,clk,
    input [3:0] address,
    output reg [15:0]  out
    );
	 
	initial out=0;
	
	always @(posedge clk) begin
		if(en) begin
			case(address)
				0: out=15;
				1: out=14;
				2: out=13;
				3: out=12;
				4: out=11;
				5: out=10;
				6: out=9;
				7: out=8;
				8: out=7;
				9: out=6;				
				10: out=5;
				11: out=4;
				12: out=3;
				13: out=2;
				14: out=1;
				15: out=0;
			endcase
		end
		
	end

endmodule
