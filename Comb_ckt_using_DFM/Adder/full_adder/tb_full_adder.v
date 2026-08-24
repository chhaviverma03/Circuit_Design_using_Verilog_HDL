`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 05:34:48
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(

    );
    reg a,b,cin;
    wire s,cout;
    
    //step-2
    full_adder dut(a,b,cin,s,cout);
    
    //step-3
    initial begin
       {a,b,cin}=0;
     end
     
     //step-4
     initial begin
     a=1'b0;
     b=1'b0;
     cin=1'b0;
     
     #1;
     
     a=1'b0;
     b=1'b0;
     cin=1'b1;
     
     #1;
     
     a=1'b0;
     b=1'b1;
    cin=1'b0;
    
     
     #1;
     
     a=1'b0;
     b=1'b1;
     cin=1'b1;
     #1
     
     a=1'b1;
     b=1'b0;
     cin=1'b0;
     
     #1;
     
     a=1'b1;
     b=1'b0;
     cin=1'b1;
     
     #1;
     
     a=1'b1;
     b=1'b1;
     cin=1'b0;
     
     #1;
     
     a=1'b1;
     b=1'b1;
     cin=1'b1;
     
     #100;
     $finish;
     end
endmodule
