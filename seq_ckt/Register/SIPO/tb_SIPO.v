`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 11:52:57
// Design Name: 
// Module Name: tb_SIPO
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


module tb_SIPO(

    );
    reg clk,rst,enb,s_in;
    wire [3:0]p_out;
    
    //step-2
    SIPO dut(clk,enb,rst,s_in,p_out);
    
    //step-2
    initial begin
    {clk,enb,rst,s_in}=0;
    end
    //step-3
    always #5 clk=~clk;
    
    //step-6
    initial begin
      rst=1;
      #10;
      rst=0;
      
      s_in=1'b1;
      #10;
      s_in=1'b1;
      #10;
      s_in=1'b0;
      #10;
      s_in=1'b0;
      #10;
      enb=1;
      end
endmodule
