`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:07 02/06/2019
// Design Name:   dual_port_RAM_16bit_4bit
// Module Name:   D:/Reconfigurable Systems Lab/dual_port_RAM_16bit_4bit_test.v
// Project Name:  reconfig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dual_port_RAM_16bit_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dual_port_RAM_16bit_4bit_test;

	// Inputs
	reg wea;
	reg ena;
	reg clka;
	reg web;
	reg enb;
	reg clkb;
	reg [15:0] dina;
	reg [15:0] dinb;
	reg [3:0] ada;
	reg [3:0] adb;

	// Outputs
	wire [15:0] outa;
	wire [15:0] outb;

	// Instantiate the Unit Under Test (UUT)
	dual_port_RAM_16bit_4bit uut (
		.wea(wea), 
		.ena(ena), 
		.clka(clka), 
		.web(web), 
		.enb(enb), 
		.clkb(clkb), 
		.dina(dina), 
		.dinb(dinb), 
		.ada(ada), 
		.adb(adb), 
		.outa(outa), 
		.outb(outb)
	);
	
	always #20 clka=~clka;
	always #20 clkb=~clkb;
	
	initial begin
		// Initialize Inputs
		wea = 0;
		ena = 0;
		clka = 0;
		web = 0;
		enb = 0;
		dina = 0;
		dinb = 0;
		ada = 0;
		adb = 0;
		#15;
		clkb = 0;
		ena=1;
		#40;
		ada=10;
		#40;
		wea=1;
		#40;
		dina=852;
		#40;
		wea=0;
		#40;
		ada=5;
		#40;
		ada=10;
		#40;
		#80;
		enb=1;
		adb=10;
		wea=1;
		#40;
		ada=13;
		#40;
		dina=34;
		#40;
		wea=0;
		#40;
		ada=5;
		#40;
		ada=13;
		#40;
		#80;
		enb=1;
		adb=13;

	end
      
endmodule

