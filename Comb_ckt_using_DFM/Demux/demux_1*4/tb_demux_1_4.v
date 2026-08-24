`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 08:03:23
// Design Name: 
// Module Name: tb_demux_4_1
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


module tb_demux_4_1(

    );
    reg din;
    reg [1:0]s;
    wire [3:0]y;
    
    demux_1_4 dut(din,s,y);
    
    integer m; 
    
    initial begin
      for(m=0;m<8;m=m+1) begin
          {s,din}=m;
          #10;
          end
          $finish;
          end
endmodule
