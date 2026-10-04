`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 14:18:16
// Design Name: 
// Module Name: tb_demux_1x2
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


module tb_demux_1x2(

    );
    reg din,s;
    reg [0:1]y;
    integer m;
    demux_1x2 dut(din,s,y);
    
    initial begin
    {s,din}=0;
    for(m=0;m<4;m=m+1)begin
    {s,din}=m;
    #1;
    end
    end
    endmodule
