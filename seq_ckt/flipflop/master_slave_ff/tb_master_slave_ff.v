`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 09:30:52
// Design Name: 
// Module Name: tb_master_slave_ff
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


module tb_master_slave_ff;
reg clk,j,k;
wire qs,qsbar;
master_slave_ff dut(clk,j,k,qs,qsbar);
initial begin
{clk,j,k}=0;
end
always #5 clk=~clk;
initial begin
#10;
j=0;k=0;
#10;
j=0;k=1;
#10;
j=1;k=0;
#10;
j=1;k=1;
end
endmodule
