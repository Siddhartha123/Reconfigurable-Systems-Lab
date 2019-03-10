`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:24 02/04/2019
// Design Name:   seq_detector_moore
// Module Name:   D:/Reconfigurable Systems Lab/seq_detector_moore_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_detector_moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module seq_detector_moore_test;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire out;

	always #10 clk=~clk;
	// Instantiate the Unit Under Test (UUT)
	seq_detector_moore uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		d = 0;
		clk = 0;
		rst = 0;
		#15;
		d=1;
		#20;
		d=1;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		rst=1;
		#20;
		rst=0;
		#20;
		d=1;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;
		d=0;
		#20;
		d=1;
		#20;

	end
      
endmodule

