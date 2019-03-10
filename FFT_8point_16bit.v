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
    output [15:0] r7,r6,r5,r4,r3,r2,r1,r0,i7,i6,i5,i4,i3,i2,i1,i0);
	 wire [15:0] w[7:0]; //stage 1 outputs
	 wor [15:0] r [7:0]; //stage 2 real outputs
	 wor [15:0] i [7:0]; //stage 2 imag outputs
	 wire [15:0] t1,t2,t3,t4; //complex multiplier outputs
	 
	 
	 assign r[6]=16'b0;
	 assign i0=16'b0;
	 assign i4=16'b0;
	 
	//STAGE 1
	butterfly1_FFT BF1(x0,x4,0,w[0],w[1]);
	butterfly1_FFT BF2(x6,x2,0,w[2],w[3]);
	butterfly1_FFT BF3(x1,x5,0,w[4],w[5]);
	butterfly1_FFT BF4(x7,x3,0,w[6],w[7]);


	//STAGE 2
	butterfly1_FFT BF5(w[0],w[2],0,r[0],r[2]);
	butterfly2_FFT BF6(w[1],w[3],r[1],i[1],r[3],i[3]);
	butterfly1_FFT BF7(w[4],w[6],0,r[4],i[6]);
	butterfly2_FFT BF8(w[5],w[7],t1,t2,t3,t4);
	
	/*STAGE 2 - debugging
	butterfly1_FFT BF5(w[0],w[2],0,r0,r2);
	butterfly2_FFT BF6(w[1],w[3],r1,i1,r3,i3);
	butterfly1_FFT BF7(w[4],w[6],0,r4,r6);
	butterfly2_FFT BF8(w[5],w[7],r5,i5,r7,i7);*/
	
	complex_multiplier_FFT C1(t1,t2,0,r[5],i[5]);
	complex_multiplier_FFT C2(t3,t4,1,i[7],r[7]);
	
	//stage 3
	butterfly1_FFT BF9(r[0],r[4],0,r0,r4);
	butterfly1_FFT BF10(r[1],r[5],0,r1,r5);
	butterfly1_FFT BF11(r[2],r[6],0,r2,r6);
	butterfly1_FFT BF12(i[7],i[3],1,r3,r7);
	
	assign i[2]=16'b0;
	
	butterfly1_FFT BF13(i[1],i[5],0,i1,i5);
	butterfly1_FFT BF14(i[2],i[6],0,i6,i2);
	butterfly1_FFT BF15(r[7],r[3],1,i3,i7);
	
endmodule
