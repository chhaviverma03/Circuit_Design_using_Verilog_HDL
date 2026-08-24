`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 08:38:47
// Design Name: 
// Module Name: tb_encoder_4_2
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


module tb_encoder_4_2(

    );
    reg [3:0]i;
    wire [1:0]y;
    
    encoder_4_2 dut(i,y);
    
    initial begin
      i=4'b0001;
      #1;
      i=4'b0010;
      #1;
      i=4'b0100;
      #1;
      i=4'b1000;
    end
endmodule
