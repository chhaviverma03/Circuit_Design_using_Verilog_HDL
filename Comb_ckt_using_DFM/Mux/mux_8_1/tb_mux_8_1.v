`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 07:07:40
// Design Name: 
// Module Name: tb_mux_8_1
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


module tb_mux_8_1(

    );
    reg [7:0] i;
    reg [2:0] s;
    wire y;
    
    mux_8_1 dut(i,s,y);
    integer m;
    
    initial begin
    {i,s}=0;
    end
    
    initial begin
      for(m=0;m<2048;m=m+1)
         begin
           {i,s}=m;
           #10;
           end
          $finish;
     end 
endmodule
