`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:37:13 03/06/2019
// Design Name:   FFT_8point_16bit
// Module Name:   D:/Reconfigurable Systems Lab/FFT_8point_stage1_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFT_8point_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFT_8point_stage_test;

	// Inputs
	reg [15:0] x0;
	reg [15:0] x1;
	reg [15:0] x2;
	reg [15:0] x3;
	reg [15:0] x4;
	reg [15:0] x5;
	reg [15:0] x6;
	reg [15:0] x7;

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
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
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

	initial begin
		// Initialize Inputs
		x0 = 256;
		x1 = 384;
		x2 = 512;
		x3 = 640;
		x4 = 64896;
		x5 = 65024;
		x6 = 65152;
		x7 = 65280;

		// Wait 100 ns for global reset to finish
		#100;
        
		

	end
      
endmodule
/*
FFT of sequence - {1,2,3,4,5,6,7,8}
36.000000,0.000000
-4.000000,9.656854
-4.000000,4.000000
-4.000000,1.656854
-4.000000,0.000000
-4.000000,-1.656854
-4.000000,-4.000000
-4.000000,-9.656854
*/
