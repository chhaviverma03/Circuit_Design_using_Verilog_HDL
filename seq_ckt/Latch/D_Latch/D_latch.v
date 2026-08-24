`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 15:40:13
// Design Name: 
// Module Name: D_latch
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


module D_latch(
input enb,rst,d,output reg q,qbar
    );
    //synchronous rst
    always@(enb) begin
       if(!enb) begin
         if(rst) begin
         q<=1'b0;
         qbar<=1'b1;
         end
       else begin
         q<=d;
         qbar<=~d;
       end
       end
       end
endmodule
