`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:11 02/11/2019
// Design Name:   memory_ROM_using_IPcore
// Module Name:   D:/Reconfigurable Systems Lab/memory_ROM_using_IP_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_ROM_using_IPcore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_ROM_using_IP_test;

	// Inputs
	reg en;
	reg clk;
	reg [3:0] address;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	memory_ROM_using_IPcore uut (
		.en(en), 
		.clk(clk), 
		.address(address), 
		.out(out)
	);
	always #20 clk=~clk;
	initial begin
		// Initialize Inputs
		en = 0;
		clk = 0;
		address = 0;
		en=1;
		#15;
		address=0;
		#40;
		address=1;
		#40;
		address=2;
		#40;
		address=3;
		#40;
		address=4;
		#40;
		address=5;
		#40;
		address=6;
		#40;
		address=7;
		#40;
		address=8;
		#40;
		address=9;
		#40;
		address=10;
		#40;
		address=11;
		#40;
		address=12;
		#40;
		address=13;
		#40;
		address=14;
		#40;
		address=15;
	end
      
endmodule

