`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:18:10 01/23/2019
// Design Name:   dff
// Module Name:   D:/reconfig/dff_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg D;
	reg clk;
	reg rst;
	reg en;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.D(D), 
		.clk(clk), 
		.rst(rst), 
		.en(en), 
		.Q(Q)
	);
	always #50 clk= ~clk;

	
	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		rst = 0;
		en = 0;
		// Wait 100 ns for global reset to finish
		#75;
		D=1;
		#100;
		en=1;
		#100;
		#100;
		#100;
		en=0;
		#100;
		rst=1;
		#100;
		rst=0;
		en=1;
      #100;
		rst=1;	 
		// Add stimulus here

	end
      
endmodule

