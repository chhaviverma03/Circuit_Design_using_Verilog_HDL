`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 07:50:15
// Design Name: 
// Module Name: tb_mod8counter
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


module tb_mod8counter(

    );
    reg clk,rst,enb;
    wire [2:0] count;
    
    //step-2
    mod8counter dut(clk,rst,enb,count);
    
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
      enb=1;
      #110;
      enb=0;
      #20;
      $finish;
      end
endmodule
