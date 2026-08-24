`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 04:53:56
// Design Name: 
// Module Name: tb_JK_ff
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


module tb_JK_ff( );
reg clk,rst,j,k;
wire q,qbar;

//step-2
JK_ff dut(clk,rst,j,k,q,qbar);

//step-3
initial begin
{clk,rst,j,k}=0;
end

//step-4
always #5 clk=~clk;

//step-5
initial begin
rst=1;
#10;
rst=0;
j=0;
k=0;
#10;
j=0;
k=1;
#10;
j=1;
k=0;
#10;
j=1;
k=1;
end

endmodule
