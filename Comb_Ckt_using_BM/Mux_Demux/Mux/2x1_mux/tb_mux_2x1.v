`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 13:21:02
// Design Name: 
// Module Name: tb_mux_2x1
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


module tb_mux_2x1;
reg i0,i1,s0;
wire y;
integer m;
mux_2x1 dut(i0,i1,s0,y);
initial begin
{i0,i1,s0}=0;
end
initial begin
  for(m=0;m<8;m=m+1)begin
  {i0,i1,s0}=m;
  #1;
  end
 end
endmodule
