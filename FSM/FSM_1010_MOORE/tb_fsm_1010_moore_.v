`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 05:23:10
// Design Name: 
// Module Name: tb_fsm_1010_moore_
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


module tb_fsm_1010_moore_(

    );
    reg clk,rst,din;
    wire detected;
    
    fsm_1010_moore_ dut(clk,rst,din,detected);
    
    initial begin
    {clk,rst,din}=0;
    end
    
    always #5 clk=~clk ;
    
    initial begin 
    rst=1'b1;
    #10;
    rst = 1'b0;
    #10;
    din=1'b1;
    #10;
    din=1'b0;
    #10;
    din=1'b1;
    #10;
    din=1'b0;
    #10;
    end
    
endmodule
