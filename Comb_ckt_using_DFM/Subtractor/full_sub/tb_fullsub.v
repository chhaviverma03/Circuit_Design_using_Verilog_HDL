`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 05:56:04
// Design Name: 
// Module Name: tb_fullsub
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


module tb_fullsub(

    );
    reg a,b,bin;
    wire diff,bout;
    
    //step-2
    full_sub dut(a,b,bin,diff,bout);
    
    //step-3
    initial begin
       {a,b,bin}=0;
     end
     
     //step-4
     initial begin
     a=1'b0;
     b=1'b0;
     bin=1'b0;
     
     #1;
     
     a=1'b0;
     b=1'b0;
     bin=1'b1;
     
     #1;
     
     a=1'b0;
     b=1'b1;
    bin=1'b0;
    
     
     #1;
     
     a=1'b0;
     b=1'b1;
     bin=1'b1;
     #1
     
     a=1'b1;
     b=1'b0;
     bin=1'b0;
     
     #1;
     
     a=1'b1;
     b=1'b0;
     bin=1'b1;
     
     #1;
     
     a=1'b1;
     b=1'b1;
     bin=1'b0;
     
     #1;
     
     a=1'b1;
     b=1'b1;
     bin=1'b1;
     
     #100;
     $finish;
     end
endmodule
