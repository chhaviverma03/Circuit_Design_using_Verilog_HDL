`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2026 15:10:49
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(input enb,rst,s,r , output reg q,qbar
    );
    //reset logic

//1.synchronous reset
  always@(enb) begin
       if(enb) begin
       
          //reset logic
          //synchronous reset
          if(rst) begin
             q<=1'b0;
             qbar<=1'b1;
          end

    
 //asynchronous reset
//  always@(enb,rst) begin
//  if(rst) begin
//             q<=1'b0;
//             qbar<=1'b1;
//          end  
//   if(enb) begin
          
          //USING NOR SR LATCH LOGIC
          //memmory state 
          if(s==0 && r==0) begin
             q<=q;
             qbar<=qbar;
          end
          
          //reset
          if(s==0 && r==1) begin
             q<=1'b0;
             qbar<=1'b1;
          end
          
          //set
          if(s==1 && r==0) begin
             q<=1'b1;
             qbar<=1'b0;
          end
          
          //invalid state 
          if(s==1 && r==1) begin
             q<='bx;
             qbar<='bx;
          end
    end
    end
    
endmodule
