`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 09:45:35
// Design Name: 
// Module Name: jk_masterslave
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


module jk_masterslave(
input clk,j,k,output reg q,qbar);
    always@(clk) begin
    if(j==0 && k==0)begin
     q<=q;
     qbar<=qbar;
    end
    else if(j==0 && k==1)begin
      q<=1'b0;
      qbar<=1'b1;
    end
    else if(j==1 && k==0)begin
      q<=1'b1;
      qbar<=1'b0;
    end
    else begin
      q<=~q;
      qbar<=~qbar;
 
    end 
    end 
endmodule
