`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:59 01/30/2019
// Design Name:   seq_detector_mealy
// Module Name:   D:/Reconfigurable Systems Lab/seq_detector_mealy_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_detector_mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_detector_mealy_test;

	// Inputs
	reg d,rst;
	reg clk;

	// Outputs
	wire out;
	
	always #10 clk=~clk;
	
	// Instantiate the Unit Under Test (UUT)
	seq_detector_mealy uut (
		.d(d), 
		.clk(clk), 
		.rst(rst),
		.out(out)
	);

	initial begin
		clk = 0;
		rst=0;
		d = 0;
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

