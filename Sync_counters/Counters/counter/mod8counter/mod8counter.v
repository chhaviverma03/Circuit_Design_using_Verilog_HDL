`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 07:47:04
// Design Name: 
// Module Name: mod8counter
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


module mod8counter(
input clk,rst,enb,output reg [2:0]count
    );
    always@(posedge clk) begin
      if(rst) 
        count<=3'b000;
      else if(enb==1) begin
         count<=count+1;
         end
      else 
         count<=count;
       end
      
endmodule
