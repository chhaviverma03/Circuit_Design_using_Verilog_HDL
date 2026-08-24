`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 16:32:57
// Design Name: 
// Module Name: tb_JK_latch
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


module tb_JK_latch(

    );
    
    reg enb,rst,j,k;
    wire q,qbar;
    integer i;
    
    //step-2
    jk_latch dut(enb,rst,j,k,q,qbar);
    
    //step-3
    initial begin
    {enb,rst,j,k}=0;
    end
    
    //step-4
    always #5 enb=~enb;
    
    //step-5
    initial begin
     rst=1;
     #10
     rst=0;
     
//     #10;
//     j=0;
//     k=0;
//     #10;
//     j=0;
//     k=1;
//     #10;
//     j=1;
//     k=0;
//     #10
//     j=1;
//     k=1;

//2nd way-
   for(i=0;i<4;i=i+1) begin
   #1;
      {j,k}=i;
      end
    end
    
endmodule
