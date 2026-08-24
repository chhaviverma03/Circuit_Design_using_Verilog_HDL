`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:52:01
// Design Name: 
// Module Name: tb_freqby4
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


module tb_freqby4(

    );
    reg clk,rst,enb;
    wire f_4;
    
    //step-2
    freqby4 dut(clk,rst,enb,f_4);
    
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
     rst=0;
     enb=1;
    
     end
    
endmodule
