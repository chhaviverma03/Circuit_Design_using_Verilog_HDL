`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 09:03:14
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(
input [1:0]d,output[3:0] i
    );
    assign i[0]=~d[1]&~d[0];
    assign i[1]=~d[1]&d[0];
    assign i[2]=d[1]&~d[0];
    assign i[3]=d[1]&d[0];
endmodule
