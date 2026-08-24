`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 19:04:16
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff(

    );
    reg clk,rst,s,r;
    wire q,qbar;
    
    //step-2
    sr_ff dut(clk,rst,s,r,q,qbar);
    
    //step-3 
    initial begin
    {clk,rst,s,r}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
    rst=1;
    #10;
    rst=0;
    
    s=0;
    r=0;
    #10;
    s=0;
    r=1;
    #10;
    s=1;
    r=0;
    #10;
    s=1;
    r=1;
    end
endmodule
