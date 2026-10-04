`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 10:23:11
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;
  reg a,b,c;
  wire sum,carry;
  integer m;
  
  full_adder dut(a,b,c,sum,carry);
  initial begin
  {a,b,c}=0;
  end
  
  initial begin
  for(m=0;m<8;m=m+1)begin
  {a,b,c}=m;
  #1;
  end
  end
  
endmodule
