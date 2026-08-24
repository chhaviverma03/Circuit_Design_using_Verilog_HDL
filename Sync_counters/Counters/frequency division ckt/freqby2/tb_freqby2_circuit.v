`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:35:37
// Design Name: 
// Module Name: tb_freqby2
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


module tb_freqby2(

    );
    reg clk,rst;
    wire f_2;
    
    //step-2
    freqby2 dut(clk,rst,f_2);
    
    //step-3
    initial begin
     {clk,rst}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
    rst=1;
    #10;
    rst=0;

    end
    
    //
endmodule
