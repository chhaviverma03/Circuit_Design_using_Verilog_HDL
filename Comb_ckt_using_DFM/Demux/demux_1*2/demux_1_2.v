`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 07:48:07
// Design Name: 
// Module Name: demux_1_2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux_1_2(
input d,s , output [1:0]y
    );
    assign y[0]=(s==1'b0)?d:1'b0;
    assign y[1]=(s==1'b1)?d:1'b0;
endmodule
