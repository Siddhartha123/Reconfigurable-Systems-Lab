`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:07:10 01/22/2019
// Design Name:   four_bit_comparator
// Module Name:   D:/reconfig/four_bit_comparator_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_comparator_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire gt;
	wire eq;
	wire lt;

	// Instantiate the Unit Under Test (UUT)
	four_bit_comparator uut (
		.a(a), 
		.b(b), 
		.gt(gt), 
		.eq(eq), 
		.lt(lt)
	);

	initial begin
		// Initialize Inputs
		a = 10;
		b = 11;
		#100
		a = 12;
		b = 11;
		#100
		a = 9;
		b = 8;
		#100
		a = 15;
		b = 8;
		#100
		a = 6;
		b = 5;
		#100
		a = 12;
		b = 12;
		#100;
	end
      
endmodule

