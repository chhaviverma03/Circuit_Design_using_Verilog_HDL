`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 13:51:05
// Design Name: 
// Module Name: tb_sr
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


module tb_sr(

    );
    //instantiation-step-1
    reg enb,rst,s,r;
    wire q,qbar;
    //declaration -step-2
    sr_latch dut(enb,rst,s,r,q,qbar);
    
    //step-3
    initial
        begin
          {enb,rst,s,r}=0;
        end
    //step-4-genrating enable signal
    always #5 enb=~enb;
    
    //step-5 drive the inputs
    initial begin
       rst=1;
       #5
       rst=0;
       
       //1.hold cond
       s=0;
       r=0;
       
       //2.set cond
       #10;
       s=1;
       r=0;
       
       //3.reset cond
       #10
       s=0;
       r=1;
       
       //4.invalid cond
       #10;
       s=1;
       r=1;
       end
    
endmodule













