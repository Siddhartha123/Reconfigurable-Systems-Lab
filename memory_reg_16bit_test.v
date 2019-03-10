`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:13 02/06/2019
// Design Name:   memory_reg_16bit
// Module Name:   D:/Reconfigurable Systems Lab/memory_reg_16bit_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_reg_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_reg_16bit_test;

	// Inputs
	reg [15:0] d;
	reg en;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] q;

	// Instantiate the Unit Under Test (UUT)
	memory_reg_16bit uut (
		.d(d), 
		.en(en), 
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
	always #20 clk=~clk;
	initial begin
		d = 0;
		en = 0;
		clk = 0;
		rst = 0;
		#15
		d=15;
		#40;
		en=1;
		#40;
		d=50;
		#40;
		d=400;
		#40;
		en=0;
		#40;
		d=35;
		#40;
		d=77;
	end
      
endmodule

