`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:25 01/16/2019 
// Design Name: 
// Module Name:    four_bit_comparator 
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
module four_bit_comparator(
    input wire [3:0] a,
    input wire [3:0] b,
    output wire gt,
    output wire eq,
    output wire lt
    );
wire gt0,gt1,gt2,gt3;
wire lt0,lt1,lt2,lt3;
wire eq0,eq1,eq2,eq3;

single_bit_comparator X1(a[3],b[3],gt3,eq3,lt3);
single_bit_comparator X2(a[2],b[2],gt2,eq2,lt2);
single_bit_comparator X3(a[1],b[1],gt1,eq1,lt1);
single_bit_comparator X4(a[0],b[0],gt0,eq0,lt0);

assign gt = gt3 | (eq3 & gt2) | (eq3 & eq2 & gt1) | (eq3 & eq2 & eq1 & gt0);
assign eq = eq3 & eq2 & eq1 & eq0;
assign lt = (~gt) & (~eq);

endmodule
