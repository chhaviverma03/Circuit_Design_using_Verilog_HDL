`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 15:05:55
// Design Name: 
// Module Name: PIPO
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


module PIPO(
input clk,rst,load,input[3:0]p_in,output reg [3:0]p_out
    );
    
    reg [3:0] temp;
    
    always@(posedge clk) 
       begin
         if(rst)
           temp<=4'b0000;
         else
            if(load==1)
               begin
                 temp<=p_in;
               end
         else 
             if(load==0)
                begin
                  p_out<=temp;
                 end  
       end            
    
    
endmodule
