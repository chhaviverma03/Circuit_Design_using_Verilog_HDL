`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:35:10
// Design Name: 
// Module Name: freqby2
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

module freqby2(
input clk,rst,output reg f_2
    );
    always@(posedge clk) begin 
      if(rst)
         f_2<=1'b0;
       else 
         f_2<=~f_2;
     end
    
endmodule

