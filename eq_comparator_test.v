`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:42 01/23/2019
// Design Name:   eq_comparator
// Module Name:   D:/reconfig/eq_comparator_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eq_comparator_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire eq;

	// Instantiate the Unit Under Test (UUT)
	eq_comparator uut (
		.a(a), 
		.b(b), 
		.eq(eq)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#50;
		a=4;
		b=6;
		#50;
		a=10;
		b=10;
	end
      
endmodule

