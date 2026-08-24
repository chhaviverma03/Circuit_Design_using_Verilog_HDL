`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 11:31:56
// Design Name: 
// Module Name: tb_siso
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


module tb_siso(

    );
    reg clk,rst,enb,s_in;
    wire s_out;
    
    //step-2
    siso dut(clk,enb,rst,s_in,s_out);
    
    //step-3
    initial begin
      {clk,rst,enb,s_in}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
      rst=1;
      #10;
      rst=0;
      
      enb=0;
      #10;
      enb=1;
      
      s_in=1'b1;
      #10;
      s_in=1'b0;
      #10;
      s_in=1'b1;
      #10;
      s_in=1'b0;
      #50;
      enb=0;
    
  end     
endmodule









