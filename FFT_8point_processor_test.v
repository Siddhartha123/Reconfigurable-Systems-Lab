`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:45 03/13/2019
// Design Name:   FFT_8point_processor
// Module Name:   D:/Reconfigurable-Systems-Lab/FFT_8point_processor_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFT_8point_processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFT_8point_processor_test;

	// Inputs
	reg start;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] r;
	wire [15:0] i;

	// Instantiate the Unit Under Test (UUT)
	FFT_8point_processor uut (
		.start(start), 
		.clk(clk), 
		.rst(rst), 
		.r(r), 
		.i(i)
	);

		always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		start = 0;
		clk = 0;
		rst = 0;
		#160;
		start=1;
		#15;
		start=0;
        
		// Add stimulus here

	end
      
endmodule

