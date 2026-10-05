`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 17:01:12
// Design Name: 
// Module Name: tb_ripple_adder
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


module tb_ripple_adder;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  integer m;
  ripple_adder ra1(a,b,cin,sum,cout);
  
  initial begin

  for(m=0;m<8;m=m+1)begin
  {a,b,cin}=m;
  #1;
  end
  end
endmodule
