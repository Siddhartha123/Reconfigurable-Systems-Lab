`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:59 01/16/2019 
// Design Name: 
// Module Name:    four_bit_arary_multiplier 
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
module four_bit_arary_multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
    );
	wire [14:0] s,c;
	assign p[0]=a[0]&b[0];							
	stage_new X1(a[1]&b[0],a[0]&b[1],0, a[2]&b[0],a[1]&b[1],0, a[2]&b[1],a[3]&b[0],0, s[0],c[0],s[1],c[1],s[2],c[2]);
	assign p[1]=s[0];
	
	stage_new X2(c[0],s[1],a[0]&b[2], c[1],s[2],a[1]&b[2], b[1]&a[3],c[2],a[2]&b[2], s[3],c[3],s[4],c[4],s[5],c[5]);
	assign p[2]=s[3];
	
	stage_new X3(c[3],s[4],a[0]&b[3], c[4],s[5],a[1]&b[3], b[2]&a[3],c[5],a[2]&b[3], s[6],c[6],s[7],c[7],s[8],c[8]);
	assign p[3]=s[6];
	
	stage_new X4(c[6],s[7],0, c[7],s[8],0, b[3]&a[3],c[8],0, s[9],c[9],s[10],c[10],s[11],c[11]);
	assign p[4]=s[9];
	
	stage_new X5(c[9],s[10],0, c[10],s[11],0, 0,0,0, s[12],c[12],s[13],c[13],s[14],c[14]);
	assign p[5]=s[12];
	assign p[6]=s[13];
	assign p[7]=c[13];

endmodule
