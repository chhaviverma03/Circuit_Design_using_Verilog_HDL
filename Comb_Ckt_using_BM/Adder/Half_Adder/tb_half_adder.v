`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 09:52:18
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;
//step-1
 reg a,b;
 wire sum,carry;
 integer m;
 
 //step-2
 half_adder dut(a,b,sum,carry);
 
 //step-3
initial begin
{a,b}=0;
end

//step-4 
initial begin
 for(m=0;m<4;m=m+1)begin
 {a,b}=m;
 #1;
 end
 #100;
 $finish;
 end
 
endmodule







