`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:08 01/16/2019 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );

assign sum= a ^ b ^ c;
assign carry = a&b | b&c | c&a;
endmodule
