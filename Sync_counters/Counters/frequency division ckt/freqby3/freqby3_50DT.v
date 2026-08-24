`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 16:43:09
// Design Name: 
// Module Name: freqby3_50DT
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


module freqby3_50DT(
input clk,rst,enb,output  f_3
    );
    reg [1:0] count;
    reg enb1,enb2;
    always@(posedge clk) begin
       if(rst)begin
        count<=1'b0;
        enb1<=0;
        enb2<=0;
        end
        else if(count==2 && enb)
         count<=0;
       else if(enb && count<2) 
         count<=count+1'b1;
       else 
         count<=count;
       end
       
       
       always@(posedge clk) begin
         if(count==0)
            enb1<=1'b1;
         else 
            enb1<=0;
         end
         
       always@(negedge clk) begin
          if(count==0)
              enb2<=1'b1;
          else
               enb2<=0;
          end
          

   assign f_3=enb1|enb2;

endmodule
