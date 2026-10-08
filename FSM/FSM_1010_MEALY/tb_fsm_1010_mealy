`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 05:09:58
// Design Name: 
// Module Name: tb_fsm_1010_mealy
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


module tb_fsm_1010_mealy(

    );
    reg clk,rst,d_in;
    wire detected;
    
    fsm_1010_mealy dut(clk,rst,d_in,detected);
    
    initial begin
    {clk,rst,d_in}=0;
    end
    
    always #5 clk=~clk;
    
    initial begin
    rst=1'b1;
    #10;
    rst=1'b0;
    #10;
    d_in=1'b1;
    #10;
    d_in=1'b0;
    #10;
    d_in=1'b1;
    #10;
    d_in=1'b0;
    end
    
endmodule
