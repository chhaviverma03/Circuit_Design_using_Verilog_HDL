`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 08:07:19
// Design Name: 
// Module Name: tb_multiple_even_upcounter
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


module tb_multiple_even_upcounter(

    );
    reg clk,rst,enb;
    reg [1:0] mode;
    reg up_downbar;
 wire  mod_2_count;
 wire [1:0] mod_4_count;
 wire [2:0] mod_8_count;
 wire [3:0] mod_16_count;
 
 //step-2
multiple_even_upcounter dut (
        .clk(clk),
        .rst(rst),
        .enb(enb),
        .mode(mode),
        .up_downbar(up_downbar),
        .mod_2_count(mod_2_count),
        .mod_4_count(mod_4_count),
        .mod_8_count(mod_8_count),
        .mod_16_count(mod_16_count)
    ); 
 //step-3
 initial begin
   {clk,rst,enb,mode,up_downbar}=0;
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
 //  up_downbar=1'b0;
   mode=2'b00;
   #40;
   enb=1'b0;
  
   #10;
   enb=1'b1;
   up_downbar=1'b0;
   mode=2'b01;
   #40;
   enb=1'b0;
   up_downbar=1'b1;
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
