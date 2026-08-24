`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 16:14:47
// Design Name: 
// Module Name: tb_T_latch
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


module tb_T_latch(

    );
    reg enb,rst,t;
    wire q,qbar;
    
    //step-2
    T_latch dut(enb,rst,t,q,qbar);
    
    //step-3
    initial begin
      {enb,rst,t}=0;
    end
    
    //step-4
    always #5 enb=~enb;
    
    //step-5
    initial begin
       rst=1;
       #10
       rst=0;
       #10
       t=1;
       #10;
       t=0;
     end
    
endmodule
