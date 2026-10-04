`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 13:45:29
// Design Name: 
// Module Name: tb_mux_4x1
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


module tb_mux_4x1;
  reg i0,i1,i2,i3;
  reg [1:0]s;
  wire y;
  integer m;
  
  mux_4x1 dut(i0,i1,i2,i3,s,y);
  
  initial begin
  {i0,i1,i2,i3,s}=0;
  for(m=0;m<64;m=m+1)begin
  {i0,i1,i2,i3,s}=m;
  #1;
  end
  end
endmodule
