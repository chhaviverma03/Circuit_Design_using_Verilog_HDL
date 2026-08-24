`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 13:40:38
// Design Name: 
// Module Name: mod5counter
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


module mod5counter(
input clk,rst,enb, output reg [3:0]count
    );
    //upcounting
//    always@(posedge clk) begin
//      if(rst)
//        count<=0;
//      else if(count<4 && enb) 
//        count<=count+1'b1;
//      else if(count>=4 && enb) 
//        count<=3'b000;
//      else if(enb==0)
//        count<=count;
//    end
    
    //down counting
    always@(posedge clk) begin
      if(rst) 
        count<=3'b100;
        else if(count>0 && enb)
          count<=count-1'b1;
        else if(count==0 && enb)
          count<=3'b100;
        else if(~enb)
          count<=count;
      end
endmodule
