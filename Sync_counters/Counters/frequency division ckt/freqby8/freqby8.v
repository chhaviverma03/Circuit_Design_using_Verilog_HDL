`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 12:05:35
// Design Name: 
// Module Name: freqby8
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


module freqby8(
input clk,rst,enb,output  f_8
    );
    reg [2:0] count;
    always@(posedge clk) begin
      if(rst)
      count<=4'b0000;
      else if(enb) begin
         count<=count+1'b1;
      end
      else 
        count<=count;
      end
      assign f_8 =count[2];
endmodule
