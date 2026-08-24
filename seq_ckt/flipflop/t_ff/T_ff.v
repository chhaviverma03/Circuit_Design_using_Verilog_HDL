`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 05:04:30
// Design Name: 
// Module Name: T_ff
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


module T_ff(
input clk,rst,t,output reg q,output qbar
    );
    always@(posedge clk or posedge rst) begin
       if(rst) 
         q<=1'b0;
       else begin
         case(t)
          1'b0:q<=q;
          1'b1:q<=~q;
          default:q<='bx;
          endcase
          end 
          end
 assign qbar=~q;
endmodule
