`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 05:22:48
// Design Name: 
// Module Name: fsm_1010_moore_
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


module fsm_1010_moore_(
input clk,rst,din,output reg detected
    );
    reg [2:0] ps,ns;
    parameter idle=3'b000;
    parameter s1=3'b001;
    parameter s2=3'b010;
    parameter s3=3'b011;
    parameter s4=3'b100;
    
    //present state logic;
    always@(posedge clk) begin
       if(rst) 
          ps<=idle;
       else
          ps<=ns;
       end
     
     //next state logic
     always@(*) begin
        case(ps)
           idle: begin
           //detected=0;
             if(din==1'b1)
               ns<=s1;
             else
               ns<=idle;
            end
            
            s1:begin
              if(din==1'b0)
                 ns<=s2;
              else
                 ns<=s1;
              end
              
            s2:begin
               if(din==1'b1)
                 ns<=s3;
               else
                 ns<=idle;
                end
                
            s3:begin
                if(din==1'b0)
                  ns<=s4;
                else
                  ns<=s1;
                end
                
            s4:begin
                if(din==1'b0)
                   ns<=idle;
                else
                   ns<=s1;
                end
             default:ns<=idle;
            endcase    
            end
            
        //output logic
        always@(posedge clk) begin
        if(rst) 
          detected=1'b0;
        else
          case(ps)
          idle:detected<=1'b0;
          s1:detected<=1'b0;
          s2:detected<=1'b0;
          s3:detected<=1'b0;
          s4: detected<=1'b1;

            default:detected<=1'b0;
            endcase
            end
endmodule
