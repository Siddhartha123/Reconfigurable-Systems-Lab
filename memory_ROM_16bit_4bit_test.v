`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:11 02/06/2019
// Design Name:   memory_ROM_16bit_4bit
// Module Name:   D:/Reconfigurable Systems Lab/memory_ROM_16bit_4bit_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_ROM_16bit_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_ROM_16bit_4bit_test;

	// Inputs
	reg en;
	reg clk;
	reg [3:0] address;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	memory_ROM_16bit_4bit uut (
		.en(en), 
		.clk(clk), 
		.address(address), 
		.out(out)
	);
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		en = 0;
		clk = 0;
		address = 0;
		#15;
		address=1;
		#20;
		address = 6;
		en=1;
		#20
		address = 15;
		#20;
		address=3;
		#20;
		address=4;
		#20;
		address=13;
		#20;
		address=9;
		#20;
		address=8;
		#20;
		address=14;
		#20;
		address=2;
	end
      
endmodule

