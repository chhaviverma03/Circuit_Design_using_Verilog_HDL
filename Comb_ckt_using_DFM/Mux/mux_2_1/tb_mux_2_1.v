`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 06:03:04
// Design Name: 
// Module Name: tb_mux_2_1
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


module tb_mux_2_1(

    );
    reg [0:1] i;
    reg s;
    wire y;
   integer m;
    
    mux_2_1 dut(i,s,y);
    
    initial 
      begin
        {i,s}=0;
        end
        
    initial begin
       for(m=0;m<8;m=m+1)
         begin
          {i,s}=m;
          #10;
          end
    $finish;      
    end
endmodule
