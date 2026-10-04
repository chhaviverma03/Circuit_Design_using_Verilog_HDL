`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 14:15:04
// Design Name: 
// Module Name: tb_encoder_4x2
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


module tb_encoder_4x2(

    );
    reg [3:0]i;
    wire [1:0]y;
    integer m;
    
    encoder_4x2 dut(i,y);
    
    initial begin
    for(m=0;m<16;m=m+1)begin
    i=m;
    #1;
    end
    end
endmodule
