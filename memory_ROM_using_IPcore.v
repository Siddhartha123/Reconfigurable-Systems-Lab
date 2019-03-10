`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:02 02/11/2019 
// Design Name: 
// Module Name:    memory_ROM_using_IPcore 
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
module memory_ROM_using_IPcore(
    input en,clk,
    input [3:0] address,
    output [15:0] out
    );
	 test ROM (
  .clka(clk), // input clka
  .ena(en), // input ena
  .addra(address), // input [3 : 0] addra
  .douta(out) // output [15 : 0] douta
);


endmodule
