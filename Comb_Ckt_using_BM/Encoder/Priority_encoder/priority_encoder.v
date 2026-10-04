`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 15:00:43
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
input [3:0]i ,output reg [1:0]y
    );
    always@(*) begin
    casex(i)
    4'b0001: y=2'b00;
    4'b001x:y=2'b01;
    4'b01xx:y=2'b10;
    4'b1xxx:y=2'b11;
    default:y=2'bxx;
    endcase
    end  
endmodule
