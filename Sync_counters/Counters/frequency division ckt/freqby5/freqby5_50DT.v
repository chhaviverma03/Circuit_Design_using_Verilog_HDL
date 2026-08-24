`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 18:30:48
// Design Name: 
// Module Name: freqby5_50DT
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


module freqby5_50DT(
input clk,rst,enb, output f_5
    );
    reg [2:0] count;
    reg enb1;
    reg enb2;
    //upcounting
    always@(posedge clk) begin
      if(rst) begin
        count<=0;
        enb1<=0;
        enb2<=0;
        end
      else if(count<4 && enb) 
        count<=count+1'b1;
      else if(count>=4 && enb) 
        count<=3'b000;
      else if(enb==0)
        count<=count;
    end
    
    always@(posedge clk) begin
       if(count==0 || count==3'b001)
            enb1<=1;
       else 
           enb1=0;
            end
    always@(negedge clk) begin
        if(count==0 || count==3'b001)
             enb2<=1;
        else 
             enb2<=0;
             end
    assign f_5=enb1|enb2;
    
endmodule
