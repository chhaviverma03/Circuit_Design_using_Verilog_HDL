`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 07:14:10
// Design Name: 
// Module Name: mod4counter
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


module mod4counter(
input clk,rst,enb,output reg[1:0] count
    );
    always@(posedge clk) begin
        if(rst) 
          count<=2'b00;
        else if(enb) begin
               count<=count+1;
               end
         else
             count<=count;
         end
endmodule

