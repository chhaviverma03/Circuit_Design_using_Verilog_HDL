`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 10:47:14
// Design Name: 
// Module Name: tb_fullsub
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


module tb_fullsub(

    );
    reg a,b,c;
    wire diff,bout;
    integer m;
    
    full_sub dut(a,b,c,diff,bout);
    
    initial begin
    {a,b,c}=0;
    for(m=0;m<8;m=m+1)begin
    {a,b,c}=m;
    #1;
    end
    end
    
endmodule
