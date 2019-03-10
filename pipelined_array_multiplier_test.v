`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:29 01/29/2019
// Design Name:   pipelined_arary_multiplier
// Module Name:   D:/Reconfigurable Systems Lab/pipelined_array_multiplier_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipelined_arary_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipelined_array_multiplier_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg clk;

	// Outputs
	wire [7:0] p;
	
	always #20 clk = ~clk;
	// Instantiate the Unit Under Test (UUT)
	multiplier_pipeline uut (
		.a(a), 
		.b(b), 
		.clk(clk), 
		.y(p)
	);

	initial begin
		a = 00;
		b = 00;
		clk = 0;
		#39.5;
		a = 'd15;
		b = 'd15;
		#40;
		a = 'd15;
		b = 'd12;
		#40;
		a = 'd2;
		b = 'd15;
		#40;
		
		
	end
   
	/*always @(negedge clk)
	begin
	a=a+1;
	b=b+2;
	end*/

endmodule

