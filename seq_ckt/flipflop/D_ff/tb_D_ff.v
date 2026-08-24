`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 04:34:02
// Design Name: 
// Module Name: tb_D_ff
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


module tb_D_ff(

    );
    reg clk,rst,d;
    wire q,qbar;
    
    //step-2
    D_ff dut(clk,rst,d,q,qbar);
    
    //step-3
    initial begin
    {clk,rst,d}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
    rst=1;
    #10;
    rst=0;
    d=0;
    #10;
    d=1;
    end
endmodule
