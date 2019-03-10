`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:07 01/16/2019
// Design Name:   four_bit_arary_multiplier
// Module Name:   D:/reconfig/array_multiplier_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_arary_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module array_multiplier_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	four_bit_arary_multiplier uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1011;
		b = 4'b1010;
		#100;
		a = 4'b1111;
		b = 4'b1010;
		#100;
		a = 4'b1001;
		b = 4'b1110;
		#100;
		a = 4'b1011;
		b = 4'b1111;
		#100;

	end
      
endmodule

