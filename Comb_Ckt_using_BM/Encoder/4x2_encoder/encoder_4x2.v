`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 14:14:39
// Design Name: 
// Module Name: encoder_4x2
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


module encoder_4x2(
 input [3:0]i,output reg [1:0]y
    );
    always@(*)begin
    if(i==4'b0001)begin
       y=2'b00;
       end
    else if(i==4'b0010) begin
        y=2'b01;
        end
    else if(i==4'b0100) begin
        y=2'b10;
        end   
    else if(i==4'b1000) begin
        y=2'b11;
        end
    else
       y=2'bxx;
     end
endmodule
