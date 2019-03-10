`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:23:28 02/06/2019
// Design Name:   memory_RAM_16bit_4bit
// Module Name:   D:/Reconfigurable Systems Lab/memory_RAM_16bit_4bit_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_RAM_16bit_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_RAM_16bit_4bit_test;

	// Inputs
	reg [15:0] din;
	reg en;
	reg wen;
	reg clk;
	reg [3:0] address;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	memory_RAM_16bit_4bit uut (
		.din(din), 
		.en(en), 
		.wen(wen), 
		.clk(clk), 
		.address(address), 
		.out(out)
	);
	always #20 clk=~clk;
	initial begin
		// Initialize Inputs
		din = 0;
		en = 1;
		wen = 0;
		clk = 0;
		address = 0;
		#15;
		address=10;
		#40;
		wen=1;
		#40;
		din=25;
		#40;
		wen=0;
		#40;
		address=5;
		#40;
		address=10;
		#40;
	end
      
endmodule

