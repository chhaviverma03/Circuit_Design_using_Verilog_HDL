`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 08:50:22
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder(

    );
    reg [3:0]i;
    wire [1:0]y;
    
    priority_encoder dut(i,y);
    
    initial begin
      i=4'b0001;
      #1;
      i=4'b0001;
      #1;
      i=4'b0010;
      #1;
      i=4'b0011;
      #1;
      i=4'b0100;
      #1;
      i=4'b0101;
      #1;
      i=4'b0111;
      #1;
      i=4'b1000;
      #1;
      i=4'b1001;
      #1;
       i=4'b1011;
      #1;
       i=4'b1111;
      #1;
      end
      
      
endmodule
