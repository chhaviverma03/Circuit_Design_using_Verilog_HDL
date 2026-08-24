`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 09:03:51
// Design Name: 
// Module Name: tb_decoder_2_4
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


module tb_decoder_2_4(

    );
    reg [1:0]d;
    wire [3:0] i;
    
    decoder_2_4 dut(d,i);

initial begin
   d=2'b00;
   #1;
   d=2'b01;
    #1;
   d=2'b10;
   #1;
   d=2'b11;
   #1;
end


endmodule
