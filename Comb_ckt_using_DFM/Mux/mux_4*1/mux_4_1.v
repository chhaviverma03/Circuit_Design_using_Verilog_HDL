`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 06:55:43
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
input [3:0]i,input [1:0]s,output y
    );
    assign y=(s[1]==0)?(s[0]==0?i[0]:i[1])
                      :(s[0]==0?i[2]:i[3]);
    //or
    //assign y =i[0]&~s[0]&~s[1] | i[1]&~s[0]&s[1] | 
   //             i[2]&s[0]&~s[1] | i[3]&s[0]&s[1]
    endmodule
