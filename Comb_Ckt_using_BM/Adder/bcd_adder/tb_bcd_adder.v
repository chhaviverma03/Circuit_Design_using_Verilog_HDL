`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 17:28:00
// Design Name: 
// Module Name: tb_bcd_adder
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


module tb_bcd_adder;
reg [3:0]a_bcd,b_bcd;
reg cin;
wire [3:0]sum_bcd;
wire cout_bcd;
integer a,b,c; //10x10x2=200 combination
bcd_adder dut(a_bcd,b_bcd,cin,sum_bcd,cout_bcd);
initial begin
{a_bcd,b_bcd,cin}=0;
for(a=0;a<=9;a=a+1)begin
  for(b=0;b<=9;b=b+1)begin
    for(c=0;c<=1;c=c+1)begin
       a_bcd=a;
       b_bcd=b;
       cin=c;
       #1;
   end
  end
end
end
endmodule
