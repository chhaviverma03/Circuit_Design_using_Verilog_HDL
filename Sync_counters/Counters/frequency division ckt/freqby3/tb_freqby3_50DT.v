`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 16:43:38
// Design Name: 
// Module Name: tb_freqby3_50DT
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


module tb_freqby3_50DT(

    );
    reg clk,rst,enb;
    wire f_3;
    
    //step-2
    freqby3_50DT dut(clk,rst,enb,f_3);
    
    //step-3
    initial begin
    {clk,rst,enb}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
    rst=1;
    #10;
    rst=0;
    #10
    enb=1;
    #100;
    enb=0;
    end
       
endmodule
