`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:25:06 03/09/2019
// Design Name:   complex_multiplier_FFT
// Module Name:   D:/Reconfigurable Systems Lab/complex_multiplier_FFT_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: complex_multiplier_FFT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module complex_multiplier_FFT_test;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg ctrl;

	// Outputs
	wire [15:0] r;
	wire [15:0] i;

	// Instantiate the Unit Under Test (UUT)
	complex_multiplier_FFT uut (
		.a(a), 
		.b(b), 
		.ctrl(ctrl), 
		.r(r), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		a = 896;
		b = 64640;
		ctrl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

