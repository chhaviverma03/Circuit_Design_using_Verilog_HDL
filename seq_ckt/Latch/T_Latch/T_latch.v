`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 16:14:19
// Design Name: 
// Module Name: T_latch
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


module T_latch(
input enb,rst,t,output reg q,qbar
    );
    //syn-reset
    always@(enb) begin
      if(enb) begin
      if(rst) begin
        q<=0;
        qbar<=1;
      end
      else if(t==0) begin
        q<=q;
        qbar<=qbar;
      end
      else if(t==1) begin
         q<=~q;
         qbar<=~qbar;
       end
      
      end
    end
endmodule
