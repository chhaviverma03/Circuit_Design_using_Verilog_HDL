`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 05:04:11
// Design Name: 
// Module Name: tb_T_ff
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


module tb_T_ff(

    );
    reg clk,rst,t;
    wire q,qbar;
    
    //step-2
    T_ff dut(clk,rst,t,q,qbar);
    
    //step-3
    initial begin 
        {clk,rst,t}=0;
     end
     
     //step-4
     always #5 clk=~clk;
     
     //step-5
     initial begin
       rst=1;
       #10;
       rst=0;
       t=0;
       #20;
       t=1;
       
       #50;
       $finish;
       end
       
       
        
     
endmodule
