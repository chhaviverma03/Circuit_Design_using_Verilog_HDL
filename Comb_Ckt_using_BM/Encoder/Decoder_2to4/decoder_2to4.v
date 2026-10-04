`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 15:14:05
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
input [1:0]din,output reg [3:0]y
    );
    always@(*)begin
    case(din)
    2'b00:y=4'b0001;
    2'b01:y=4'b0010;
    2'b10:y=4'b0100;
    2'b11:y=4'b1000;
    default:y=4'bxxxx;
    endcase
    end
endmodule
