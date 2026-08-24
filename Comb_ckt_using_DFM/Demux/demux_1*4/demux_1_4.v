`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 08:02:56
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(
input din,input [1:0]s,output [3:0]y
    );
    assign y[0]=(s==2'b00)?din:1'b0;
     assign y[1]=(s==2'b01)?din:1'b0;
      assign y[2]=(s==2'b10)?din:1'b0;
       assign y[3]=(s==2'b11)?din:1'b0;
endmodule
