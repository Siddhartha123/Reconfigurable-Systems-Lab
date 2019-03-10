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
module pipelined_arary_multiplier(
    input [3:0] a,
    input [3:0] b,
	 input clk,
    output [7:0] p
    );
	parameter en=1'b1,rst=1'b0;
	wire [14:0] s,c;
	wire [16:0] e;
	assign e[10]=a[0]&b[0];
	dff D1(e[10],clk,rst,en,e[11]);
	dff D2(e[11],clk,rst,en,e[12]);
	dff D3(e[12],clk,rst,en,e[13]);
	dff D4(e[13],clk,rst,en,e[14]);
	dff D5(e[14],clk,rst,en,p[0]);
	
	pipelined_stage X1(a[1]&b[0],a[0]&b[1],0, a[2]&b[0],a[1]&b[1],0, a[2]&b[1],a[3]&b[0],0, s[0],c[0],s[1],c[1],s[2],c[2],clk,rst,en);
	assign e[0]=s[0];
	dff D6(e[0],clk,rst,en,e[1]);
	dff D7(e[1],clk,rst,en,e[2]);
	dff D8(e[2],clk,rst,en,e[3]);
	dff D9(e[3],clk,rst,en,p[1]);
	
	pipelined_stage X2(c[0],s[1],a[0]&b[2], c[1],s[2],a[1]&b[2], b[1]&a[3],c[2],a[2]&b[2], s[3],c[3],s[4],c[4],s[5],c[5],clk,rst,en);
	assign e[4]=s[3];
	dff D10(e[4],clk,rst,en,e[5]);
	dff D11(e[5],clk,rst,en,e[6]);
	dff D12(e[6],clk,rst,en,p[2]);
	
	pipelined_stage X3(c[3],s[4],a[0]&b[3], c[4],s[5],a[1]&b[3], b[2]&a[3],c[5],a[2]&b[3], s[6],c[6],s[7],c[7],s[8],c[8],clk,rst,en);
	assign e[7]=s[6];
	dff D13(e[7],clk,rst,en,e[8]);
	dff D14(e[8],clk,rst,en,p[3]);
	
	pipelined_stage X4(c[6],s[7],0, c[7],s[8],0, b[3]&a[3],c[8],0, s[9],c[9],s[10],c[10],s[11],c[11],clk,rst,en);
	assign e[9]=s[9];
	dff D15(e[9],clk,rst,en,p[4]);	

	pipelined_stage X5(c[9],s[10],0, c[10],s[11],0, 0,0,0, s[12],c[12],s[13],,s[14],c[14],clk,rst,en);
	
	assign p[5]=s[12];
	assign p[6]=s[13];
	assign p[7]=c[13];
	//dff D19(c[13],clk,rst,en,p[7]);	
	
endmodule
