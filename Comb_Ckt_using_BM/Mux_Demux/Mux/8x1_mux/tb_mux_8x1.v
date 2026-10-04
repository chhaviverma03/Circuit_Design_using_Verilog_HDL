`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 13:52:37
// Design Name: 
// Module Name: tb_mux_8x1
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


module tb_mux_8x1;
reg [7:0]i;
reg [2:0]s;
wire y;
integer m;

mux_8x1 dut(i,s,y);

initial begin
{i,s}=0;
for(m=0;m<4096;m=m+1)begin
{i,s}=m;
#1;
end
end

endmodule
