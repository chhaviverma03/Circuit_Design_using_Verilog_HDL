`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 16:32:37
// Design Name: 
// Module Name: jk_latch
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


module jk_latch(
   input enb,rst,j,k,output reg q,qbar
    );
    //asynchronous-rest
    always@(enb,rst)begin
       if(rst) begin
         q<=1'b0;
         qbar<=1'b1;
        end
       
       if(enb) begin
          
          if(j==0 && k==0) begin
              q<=q;
              qbar<=qbar;
          end
         
         else if(j==0 && k==1)begin
              q<=1'b0;
              qbar<=1'b1;
         end
         
         else if(j==1 && k==0) begin 
              q<=1'b1;
              qbar<=1'b0;
         end
         
         else begin
              q<=~q;
              qbar<=~qbar;
          end
     end
   end
endmodule
