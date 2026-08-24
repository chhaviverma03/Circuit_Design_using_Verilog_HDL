`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 07:48:37
// Design Name: 
// Module Name: tb_demux_1_2
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


module tb_demux_1_2(

    );
    reg s,d;
    wire [1:0] y;
    
    demux_1_2 dut(d,s,y);
    
    integer m;
    
    initial begin
       {d,s}=0;
    end
    
    initial begin
      for(m=0;m<4;m=m+1)
        begin
         {s,d}=m;
         #10;
        end
       $finish;
     end
   
endmodule
