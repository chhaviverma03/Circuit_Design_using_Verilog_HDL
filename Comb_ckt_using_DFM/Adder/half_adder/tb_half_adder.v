`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 05:18:50
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder(

    );
    reg a,b;
    wire s,c;
    
    //step-2
    half_adder dut(a,b,s,c);
    
    //step-3
    initial begin
       {a,b}=0;
     end
     
     //step-4
     initial begin
     a=1'b0;
     b=1'b0;
     
     #1;
     
     a=1'b0;
     b=1'b1;
     
     #1;
     
     a=1'b1;
     b=1'b0;
     
     #1;
     
     a=1'b1;
     b=1'b1;
     
     #100;
     $finish;
     end
endmodule
