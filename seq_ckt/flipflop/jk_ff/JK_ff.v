`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 04:53:32
// Design Name: 
// Module Name: JK_ff
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


module JK_ff(
input clk,rst,j,k , output reg q,output qbar
    );
    always@(posedge clk) begin
      if(rst) begin
        q<=1'b0;
        end
      else begin
         case({j,k}) 
         2'b00: q<=q;
         2'b01:q<=0;
         2'b10:q<=1;
         2'b11:q<='bx;
         endcase   
     end
     end
assign qbar=~q;
endmodule
