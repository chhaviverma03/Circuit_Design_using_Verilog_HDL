`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 07:07:19
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
input [7:0]i,input [2:0]s,output y
    );
    assign y=(s[2]==1'b0)?
                 ((s[1]==1'b0)?
                     ((s[0]==1'b0)?i[0] : i[1]):
                      ((s[0]==1'b0)?i[2] :i[3])):
                       
                   ((s[1]==1'b0)?
                       ((s[0]==1'b0)?i[4] : i[5]):
                      ((s[0]==1'b0)?i[6] :i[7]));
endmodule
