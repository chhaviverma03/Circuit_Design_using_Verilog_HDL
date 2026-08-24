`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 15:40:46
// Design Name: 
// Module Name: tb_D_latch
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


module tb_D_latch(

    );
    
    reg enb,rst,d;
    wire q,qbar;
    
    //step-2
    D_latch dut(enb,rst,d,q,qbar);
    //step-3
    initial begin
    {enb,rst,d}=0;
    end
    //step-4
    always #5 enb=~enb;
    //step-5=>driving the inputs
      initial begin
        rst=1;
        #15;
        rst=0;
         
         #5
         d=1;
         #10;
         d=0;
       end
       
endmodule
