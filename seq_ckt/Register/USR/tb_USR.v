`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 15:31:53
// Design Name: 
// Module Name: tb_USR
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

//clk,rst,load,s_in,input [1:0]mode,input[3:0]p_in,output reg [3:0]p_out
// ,output reg s_out 
module tb_USR(

    );
    reg clk,rst,load,shift,s_in;
    reg [1:0]mode;
    reg [3:0]p_in;
    wire s_out;
    wire [3:0]p_out;
    
    //step-2
    USR dut(clk,rst,load,shift,s_in,mode,p_in,p_out,s_out);
    
    //step-3
    initial begin
      {clk,rst,load,shift,s_in,mode,p_in}=0;
    end
    
    //step-4
    always #5 clk=~clk;
    
    //step-5
    initial begin
    rst=1'b1;
    #10;
    rst=1'b0;
    #10;
    
    
    mode=2'b00;
    shift=1'b1;
    s_in=1'b1;
    #10;
    s_in=1'b0;
    #10;
    s_in=1'b1;
    #10;
    s_in=1'b1;
    #50;
    shift=1'b0;
    
    
    #10
    rst=1'b1;
    #10;
    rst=1'b0;
    #10;
    mode=2'b01; //sipo
    shift=1'b1;
    s_in=1'b1;
    #10;
    s_in=1'b0;
    #10;
    s_in=1'b1;
    #10;
    s_in=1'b1;
    #10;
    shift=1'b0;
    
    #10
    rst=1'b1;
    #10;
    rst=0;
    mode=2'b11;//piso
    load=1'b1;
    p_in<=4'b1111;
    #10;
    load=1'b0; //for getting s_out
    

    
    
    
    
    end
    
      
endmodule
