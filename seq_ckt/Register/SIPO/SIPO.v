`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 11:52:36
// Design Name: 
// Module Name: SIPO
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


module SIPO(
 input clk,enb,rst,s_in,output reg [3:0]p_out
    );
    reg [3:0] temp;
    
//right shifting     
//    always@(posedge clk) begin
//      if(rst)
//        temp<=4'b0000;
//      else if(enb==0) begin
//        temp<=temp>>1'b1;
//         temp[3]<=s_in;
//       end 
//      else if(enb==1) begin
//        p_out<=temp;
//      end


//left shifting      
//   always@(posedge clk) begin
//      if(rst)
//        temp<=4'b0000;
//      else if(enb==0) begin
//        temp<=temp<<1'b1;
//         temp[0]<=s_in;
//       end 
//      else if(enb==1) begin
//        p_out<=temp;
//      end
     
     
//rhigt shifting using concatenation
 always@(posedge clk) begin
      if(rst)
        temp<=4'b0000;
      else if(enb==0) begin
        temp<={s_in,temp[3:1]};
         temp[3]<=s_in;
       end 
      else if(enb==1) begin
        p_out<=temp;
      end     
      end
endmodule
