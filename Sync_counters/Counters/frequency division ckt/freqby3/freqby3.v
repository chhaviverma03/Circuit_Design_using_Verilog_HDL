`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 15:32:20
// Design Name: 
// Module Name: freqby3
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


module freqby3(
input clk ,rst,enb,output  f_3
    );
    reg [1:0] count;
    always@(posedge clk) begin
       if(rst)
         count<=2'b00;
       else if(enb && count<2) begin
         count<=count+1'b1;  
         end
       else if(enb && count>=2)begin 
         count<=2'b00;
       end
       else 
         count<=count;
        end
       assign f_3=count[1];
endmodule