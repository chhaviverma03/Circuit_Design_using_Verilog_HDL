`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 11:31:34
// Design Name: 
// Module Name: siso
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


module siso(
input clk,enb,rst,s_in,output reg s_out
    );
 reg [3:0] temp;
 
 //right shifting using shift operator
// always@(posedge clk) begin
//    if(rst)
//      temp<=4'b0000;
//    else if(enb) begin
//      temp<=temp>>1'b1;
//      temp[3]<=s_in;
//      s_out<=temp[0];

//right shifting using concatenation operator
//always@(posedge clk) begin
//   if(rst)
//     temp<=4'b0000;
//   else if (enb) begin
//     temp<={s_in,temp[3:1]};
//     temp[3]<=s_in;
//     s_out<=temp[0];
//    end
//    end

//left shifting
//1.left shifting using shift operator
//always@(posedge clk) begin
//   if(rst)
//     temp<=4'b0000;
//   else if (enb) begin
//     temp<=temp>>1'b1;
//     temp[0]<=s_in;
//     s_out<=temp[3];
//    end
//    end

//2.left shifting using concatenation operator
always@(posedge clk) begin
   if(rst)
     temp<=4'b0000;
   else if (enb) begin
     temp<={temp[2:0],s_in};
     temp[0]<=s_in;
     s_out<=temp[3];
    end
    end



endmodule
