`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 12:05:58
// Design Name: 
// Module Name: tb_freqby8
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


module tb_freqby8(

    );
    reg clk,rst,enb;
    wire f_4;
    
    freqby8 dut(clk,rst,enb,f_4);
    
    initial begin 
      {clk,rst,enb}=0;
      end
      
    always #5 clk=~clk;
    
    initial begin
    rst=1;
    #10;
    rst=0;
    enb=1;
    #40
    enb=0;
    end
endmodule
