`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 06:56:06
// Design Name: 
// Module Name: tb_mux_4_1
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


module tb_mux_4_1(

    );
    reg [3:0] i;
    reg [1:0] s;
    wire y;
    
    mux_4_1 dut(i,s,y);
    integer m;
    
    initial begin
    {i,s}=0;
    end
    
    initial begin
      for(m=0;m<64;m=m+1)
         begin
           {i,s}=m;
           #10;
           end
          $finish;
     end 
endmodule
