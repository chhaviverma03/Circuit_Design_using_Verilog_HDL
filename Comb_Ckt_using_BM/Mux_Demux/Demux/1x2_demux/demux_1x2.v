`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 14:17:52
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(
input din,s,output reg [0:1]y
    );
    always@(*) begin
    case(s)
    1'b0:begin
        y[0]=din;
        y[1]=1'b0;
        end
    1'b1:begin
       y[0]=1'b0;
       y[1]=din;
       end
       default:begin
               y[0]=1'bx;
               y[1]=1'bx; 
               end
    endcase
    end
endmodule
