`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:12 02/06/2019 
// Design Name: 
// Module Name:    dual_port_RAM_16bit_4bit 
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
module dual_port_RAM_16bit_4bit(
    input wea,ena,clka,web,enb,clkb,
    input [15:0] dina,dinb,
    input [3:0] ada,adb,
    output reg [15:0] outa,outb
    );
	 reg[15:0] mem [15:0];
	always @(posedge clka) begin
			if(ena) begin
				if(wea)	mem[ada]=dina;
				else outa=mem[ada];
			end
	end
	
	always @(posedge clkb) begin
		if(enb) begin
			if(web) mem[adb]=dinb;
			else outb=mem[adb];
		end
	end
		
endmodule
