`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 09:30:27
// Design Name: 
// Module Name: master_slave_ff
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


module master_slave_ff(
input clk,j,k,output qs,qsbar
    );
    wire qm,qmbar;
    
    jk_masterslave jk1(clk,j,k,qm,qmbar);
    jk_masterslave jk2(~clk,qm,qmbar,qs,qsbar);
   
endmodule
