`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 15:05:30
// Design Name: 
// Module Name: tb_PIPO
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


module tb_PIPO(

    );
    
    reg clk,rst,load;
    reg [3:0]p_in;
    wire[3:0]p_out;
    
    //step-2
    PIPO dut(clk,rst,load,p_in,p_out);
    
    //step-3
    initial begin
      {clk,rst,load,p_in}=0;
      end
      
      //step-4
      always #5 clk=~clk;
      
      //step-5
     initial begin
       rst=1;
       #10;
       rst=0;
       #10;
       p_in=1111;
       load=1'b1;
       #30;
       load=1'b0;
       end
endmodule
