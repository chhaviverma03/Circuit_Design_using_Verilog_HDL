`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 10:34:19
// Design Name: 
// Module Name: tb_half_sub
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


module tb_half_sub(

    );
    reg a,b;
    wire diff,bout;
    integer m;
    
    half_subtractor dut(a,b,diff,bout);
    
    initial begin
    {a,b}=0;
    for(m=0;m<4;m=m+1)begin
    {a,b}=m;
    #1;
    end
    end
endmodule
