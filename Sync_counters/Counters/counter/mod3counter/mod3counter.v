`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:09:16
// Design Name: 
// Module Name: mod3counter
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


module mod3counter(
input clk,rst,enb,output reg [1:0]count
    );
  //up counting  
//    always@(posedge clk) begin
//      if(rst) 
//        count<=2'b00;

//      else if(count<2 && enb) begin
//        count<=count+1'b1;
//      end
//      else if(count>=2 && enb) 
//        count<=2'b00;
//       else if(enb==0)
//         count<=count;
//    end
      
    //down counting
    always@(posedge clk) begin
      if(rst)
        count<=2'b11;
      else if(count>0 && enb)
        count<=count-1'b1;
      else if(count==0 && enb)
        count<=2'b11;
      end
endmodule


