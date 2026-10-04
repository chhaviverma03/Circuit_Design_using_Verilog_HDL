`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 13:44:59
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
input i0,i1,i2,i3,[1:0]s,output reg y
    );
    always@(*) begin
    case(s)
    2'b00:y=i0;
    2'b01:y=i1;
    2'b10:y=i2;
    2'b11:y=13;
    default:y=i0;
    endcase
    end
endmodule
