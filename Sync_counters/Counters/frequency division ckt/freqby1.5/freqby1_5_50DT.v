`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 19:05:43
// Design Name: 
// Module Name: freqby1_5_50DT
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


module freqby1_5_50DT(
input clk,rst,enb, output f_1_5
    );
    reg [1:0] count;
    reg enb1;
    reg enb2;
    //upcounting
    always@(posedge clk) begin
      if(rst) begin
        count<=0;
        enb1<=0;
        enb2<=0;
        end
      else if(count<2 && enb) 
        count<=count+1'b1;
      else if(count>=2 && enb) 
        count<=0;
      else if(enb==0)
        count<=count;
    end
    
    always@(posedge clk) begin
       if(count==2'b10)
            enb1<=1;
       else 
           enb1=0;
            end
    always@(negedge clk) begin
        if(count==2'b01)
             enb2<=1;
        else 
             enb2<=0;
             end
    assign f_1_5=enb1^enb2;
    
endmodule
