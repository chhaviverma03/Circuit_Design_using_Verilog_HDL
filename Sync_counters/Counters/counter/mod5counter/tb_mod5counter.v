`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 13:41:08
// Design Name: 
// Module Name: tb_mod5counter
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


module tb_mod5counter(

    );
    reg clk,rst,enb;
    wire [2:0]count;
    
    mod5counter dut(clk,rst,enb,count);
    
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
    #100;
    enb=1'b0;
    end
endmodule
