`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:26:47 03/12/2019
// Design Name:   memory_ROM_using_read
// Module Name:   D:/Reconfigurable-Systems-Lab/memory_ROM_using_read_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_ROM_using_read
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_ROM_using_read_test;

	// Inputs
	reg en;
	reg clk;
	reg [3:0] address;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	memory_ROM_using_read uut (
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
		#15;
		address=4;
		#40;
		address=10;
		#40;
		en=1;
		#40;
		address=7;
		#40;
		address=0;
		#40;
		address=15;
		#40;
		address=3;
		#40;
		address=2;
	end
      
endmodule

