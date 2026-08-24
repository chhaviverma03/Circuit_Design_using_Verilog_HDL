`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 05:44:37
// Design Name: 
// Module Name: tb_half_sub
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


module tb_half_sub(

    );
    reg a,b;
    wire diff,bout;
    
    half_sub dut(a,b,diff,bout);
    
    initial begin
     {a,b}=0;
     end
     
     initial begin
     a=1'b0;
     b=1'b0;
     
     #1;
     a=1'b0;
     b=1'b1;
     
     #1
     
     a=1'b1;
     b=1'b0;
     
     #1
     
     a=1'b1;
     b=1'b1;
     
     #100;
     $finish;
     end
endmodule
