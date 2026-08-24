`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 15:58:49
// Design Name: 
// Module Name: freqby9
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


module freqby9(
input clk,rst,enb,output f_9
    );
    reg [3:0] count;
    always@(posedge clk) begin
     if(rst)
       count<=0;
     else if(enb && count<8) begin
        count<=count+1'b1;
     end
     else if(enb && count>=8)
        count<=4'b0000;
     else
        count<=count;
     end
     assign f_9=count[3];
endmodule
