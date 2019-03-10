`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:53 02/13/2019
// Design Name:   FFT_8bit_stage
// Module Name:   D:/Reconfigurable Systems Lab/FFT_8bit_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFT_8bit_stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFT_8point_16bit_test;

	// Inputs
	reg clk;
	reg rst;
	reg start;

	// Outputs
	wire [15:0] r7;
	wire [15:0] r6;
	wire [15:0] r5;
	wire [15:0] r4;
	wire [15:0] r3;
	wire [15:0] r2;
	wire [15:0] r1;
	wire [15:0] r0;
	wire [15:0] i7;
	wire [15:0] i6;
	wire [15:0] i5;
	wire [15:0] i4;
	wire [15:0] i3;
	wire [15:0] i2;
	wire [15:0] i1;
	wire [15:0] i0;

	// Instantiate the Unit Under Test (UUT)
	FFT_8point_16bit uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.r7(r7), 
		.r6(r6), 
		.r5(r5), 
		.r4(r4), 
		.r3(r3), 
		.r2(r2), 
		.r1(r1), 
		.r0(r0), 
		.i7(i7), 
		.i6(i6), 
		.i5(i5), 
		.i4(i4), 
		.i3(i3), 
		.i2(i2), 
		.i1(i1), 
		.i0(i0)
	);
	
	always #20 clk=~clk;
	initial begin
		clk = 0;
		rst = 0;
		start = 0;
		
	end
      
endmodule

