`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 15:32:40
// Design Name: 
// Module Name: tb_freqby3
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


module tb_freqby3(

    );
    reg clk,rst,enb;
    wire f_3;
    
    //step-2
    freqby3 dut(clk,rst,enb,f_3);
    
    //step-3
    initial begin
    {clk,rst,enb}=0;
    end
    
    //step-4
    always #5 clk =~clk;
    
    //step-5
    initial begin
    rst=1;
    #10;
    rst=1'b0;
    #10;
    enb=1'b1;
    #50
    enb=1'b0;
    end
endmodule
