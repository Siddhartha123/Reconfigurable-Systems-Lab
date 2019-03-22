`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:15 03/13/2019 
// Design Name: 
// Module Name:    FFT_8point_processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FFT_8point_processor(
    input start,clk,rst,
    output [15:0] r,i
    );
	 wire en,en1,en2,delayed_en1;
	 wire tc,tc1,tc2;
	 wire [15:0]s[7:0];
	 wire [15:0] r7,r6,r5,r4,r3,r2,r1,r0,i7,i6,i5,i4,i3,i2,i1,i0;
	 wire [15:0] mout;
	 wire [3:0] mem_address,limit_ROM,limit_PISO,limit_FFT;
	//four_bit_counter C1 (clk, cen, crst, 0, 0, 15, cout);
	memory_ROM_16bit_4bit M1(en,clk,mem_address,mout);
	SIPO_16bit S1(mout,en,clk,rst,s[7],s[6],s[5],s[4],s[3],s[2],s[1],s[0]);
	
	dff D1 (en1,clk,rst,1'b1,delayed_en1);
	FFT_8point_16bit F1(s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],delayed_en1,clk,rst,r7,r6,r5,r4,r3,r2,r1,r0,i7,i6,i5,i4,i3,i2,i1,i0);
	PISO_16bit P1(r7,r6,r5,r4,r3,r2,r1,r0,en2,clk,rst,tc1,r);
	PISO_16bit P2(i7,i6,i5,i4,i3,i2,i1,i0,en2,clk,rst,tc1,i);
	PG_with_counter PG1(start,clk,rst,limit_ROM,en,tc,mem_address);
	PG_with_counter PG2(tc,clk,rst,limit_FFT,en1,tc1);
	PG_with_counter PG3(tc1,clk,rst,limit_PISO,en2,tc2);
	
	assign limit_ROM=4'b1001;
	assign limit_FFT=4'b1001;
	assign limit_PISO=4'b1000;
	
endmodule
