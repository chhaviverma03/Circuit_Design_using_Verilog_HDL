`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 12:18:29
// Design Name: 
// Module Name: tb_clock_divider
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


module tb_clock_divider(

    );
    reg clk,rst,enb;
    reg [1:0] mode;
 wire f_2;
 wire f_4;
 wire f_8;
 wire f_16;
 
 //step-2
clock_divider dut (
        .clk(clk),
        .rst(rst),
        .enb(enb),
        .mode(mode),
        .f_2(f_2),
        .f_4(f_4),
        .f_8(f_8),
        .f_16(f_16)
    ); 
 //step-3
 initial begin
   {clk,rst,enb,mode}=0;
   end
   
  //step-4
  always #5 clk=~clk;
  
  //step-5
  initial begin
   rst=1'b1;
   #10;
   rst=1'b0;
   #10;
   enb=1'b1;
   mode=2'b00;
   #40;
   enb=1'b0;
  
   #10;
   enb=1'b1;
   mode=2'b01;
   #40;
   enb=1'b0;

   #10;
   enb=1'b1;
   mode=2'b10;
   #80;
   enb=1'b0;
   #10;
   enb=1'b1;
   mode=2'b11;
   #160;
   enb=1'b0;
end
   
endmodule

