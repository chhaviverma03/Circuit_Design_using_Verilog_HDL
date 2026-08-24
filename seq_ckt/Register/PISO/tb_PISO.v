`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 14:27:56
// Design Name: 
// Module Name: tb_PISO
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


module tb_PISO(

    );
    
    reg clk,rst,load;
    reg [3:0]p_in;
    wire s_out;
    
    //step-2
    PISO dut(clk,rst,load,p_in,s_out);
    
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
    p_in[3:0]=4'b1011;
    load=1'b1;
    #20;
    load=1'b0;
  end  
endmodule
