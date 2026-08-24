`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 16:02:49
// Design Name: 
// Module Name: tb_freqby9
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


module tb_freqby9(

    );
    reg clk,rst,enb;
    wire f_9;
    
    freqby9 dut(clk,rst,enb,f_9);
    
    initial begin
    {clk,rst,enb}=0;
    end
    
    always #5 clk=~clk;
    
    initial begin
     rst=1;
     #10;
     rst=0;
     #10;
     enb=1;
     #300
     enb=0;
     end
endmodule
