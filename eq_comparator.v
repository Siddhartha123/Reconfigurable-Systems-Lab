`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:31 01/23/2019 
// Design Name: 
// Module Name:    eq_comparator 
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
module eq_comparator(
    input [3:0] a,b,
    output eq
    );
assign eq=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (~(a[1]^b[1])) & (~(a[0]^b[0]));

endmodule
