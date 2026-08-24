`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 19:06:17
// Design Name: 
// Module Name: tb_freqby1_5_50DT
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


module tb_freqby1_5_50DT(
    );
    reg clk,rst,enb;
    wire f_1_5;
    
    freqby1_5_50DT dut(clk,rst,enb,f_1_5);
    
    initial begin 
     {clk,rst,enb}=0;
    end
    
    always #5 clk=~clk;
    
    initial begin
    rst=1;
    #10;
    rst=0;
    
    #10;
    
    enb=1'b1;
    #200;
    enb=1'b0;
    end


endmodule
