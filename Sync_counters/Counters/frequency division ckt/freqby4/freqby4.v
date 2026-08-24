`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:51:41
// Design Name: 
// Module Name: freqby4
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


module freqby4(
input clk,rst,enb,output  f_4
    );
    reg [1:0] count;
    always@(posedge clk) begin
      if(rst) 
        count<=2'b00;
      else if(enb) begin
         count<=count+1'b1;
         end
       else
       count<=count;
      end
      assign f_4=count[1];
endmodule
