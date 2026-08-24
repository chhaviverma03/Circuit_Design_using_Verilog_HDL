`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 04:32:58
// Design Name: 
// Module Name: D_ff
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


module D_ff(
input clk,rst,d,output reg q,output qbar
    );
    always@(posedge clk) begin
       if(rst) begin
          q<=1'b0;
       end
       else begin
          case(d)
           
            1'b0:q<=d;
            1'b1:q<=d;
            default:q<=1'bx;
       endcase
       end
       end
 assign qbar =~q;       
endmodule
