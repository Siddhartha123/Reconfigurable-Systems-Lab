`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:37:08 01/23/2019
// Design Name:   four_bit_counter
// Module Name:   D:/reconfig/four_bit_counter_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_counter_test;

	// Inputs
	reg clk;
	reg en;
	reg rst;
	reg load;
	reg [3:0] b,l;

	// Outputs
	wire [3:0] d;
	wire tc;
	always #5 clk=~clk;
	// Instantiate the Unit Under Test (UUT)
	four_bit_counter uut (
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.load(load), 
		.b(b), 
		.l(l),
		.tc(tc),
		.d(d)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		en = 1;
		rst = 0;
		load = 0;
		b = 0;
		l=13;
		// Wait 100 ns for global reset to finish
		#22.5;
		b=10;
      load=1;
		#5;
		load=0;		
		// Add stimulus here

	end
      
endmodule

