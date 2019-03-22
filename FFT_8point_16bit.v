`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:47 02/13/2019 
// Design Name: 
// Module Name:    FFT_8bit_stage 
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
module FFT_8point_16bit(
    input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,
	 input en,clk,rst,
    output [15:0] r7,r6,r5,r4,r3,r2,r1,r0,i7,i6,i5,i4,i3,i2,i1,i0);
	 wire [15:0] w[7:0]; //stage 1 outputs
	 wor [15:0] r [7:0]; //stage 2 real outputs
	 wor [15:0] i [7:0]; //stage 2 imag outputs
	 wire [15:0] t1,t2,t3,t4; //complex multiplier outputs
	 wire [15:0] re[7:0]; //stage 2 before delay
	 wire [15:0] im[7:0]; //stage 2 before delay
	 
	 assign r[6]=16'b0;
	 assign i0=16'b0;
	 assign i4=16'b0;
	 
	//STAGE 1
	butterfly1_FFT BF1(x0,x4,en,clk,rst,1'b0,w[0],w[1]);
	butterfly1_FFT BF2(x6,x2,en,clk,rst,1'b0,w[2],w[3]);
	butterfly1_FFT BF3(x1,x5,en,clk,rst,1'b0,w[4],w[5]);
	butterfly1_FFT BF4(x7,x3,en,clk,rst,1'b0,w[6],w[7]);
	
	//STAGE 2
	butterfly1_FFT BF5(w[0],w[2],en,clk,rst,1'b0,re[0],re[2]);
	butterfly2_FFT BF6(w[1],w[3],en,clk,rst,re[1],im[1],re[3],im[3]);
	butterfly1_FFT BF7(w[4],w[6],en,clk,rst,1'b0,re[4],im[6]);
	delay_16bit_4unit D1(re[0],en,clk,rst,r[0]);  //4 units delay to synchronize stage 2 outputs with output of complex multipliers
	delay_16bit_4unit D2(re[2],en,clk,rst,r[2]);
	delay_16bit_4unit D3(re[1],en,clk,rst,r[1]);
	delay_16bit_4unit D4(re[3],en,clk,rst,r[3]);
	delay_16bit_4unit D5(re[4],en,clk,rst,r[4]);
	delay_16bit_4unit D6(im[1],en,clk,rst,i[1]);
	delay_16bit_4unit D7(im[3],en,clk,rst,i[3]);
	delay_16bit_4unit D8(im[6],en,clk,rst,i[6]);
	butterfly2_FFT BF8(w[5],w[7],en,clk,rst,t1,t2,t3,t4);
	complex_multiplier_FFT C1(t1,t2,en,clk,rst,1'b0,r[5],i[5]);
	complex_multiplier_FFT C2(t3,t4,en,clk,rst,1'b1,i[7],r[7]);
	
	//stage 3 - real parts
	butterfly1_FFT BF9(r[0],r[4],en,clk,rst,1'b0,r0,r4);
	butterfly1_FFT BF10(r[1],r[5],en,clk,rst,1'b0,r1,r5);
	butterfly1_FFT BF11(r[2],r[6],en,clk,rst,1'b0,r2,r6);
	butterfly1_FFT BF12(i[7],i[3],en,clk,rst,1'b1,r3,r7);
	//stage 3 - imag parts
	assign i[2]=16'b0;
	butterfly1_FFT BF13(i[1],i[5],en,clk,rst,1'b0,i1,i5);
	butterfly1_FFT BF14(i[2],i[6],en,clk,rst,1'b0,i6,i2);
	butterfly1_FFT BF15(r[7],r[3],en,clk,rst,1'b1,i3,i7);
	
endmodule
