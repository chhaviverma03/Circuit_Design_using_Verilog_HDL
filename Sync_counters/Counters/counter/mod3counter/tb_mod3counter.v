`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 11:09:37
// Design Name: 
// Module Name: tb_mod3counter
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


module tb_mod3counter(

    );
    reg clk,rst,enb;
    wire [1:0] count;
    
    //step-2
    mod3counter dut(clk,rst,enb,count);
    
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
    #50;
    enb=0;
    end
       
endmodule
