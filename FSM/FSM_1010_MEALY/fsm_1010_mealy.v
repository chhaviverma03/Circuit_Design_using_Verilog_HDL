`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 04:52:14
// Design Name: 
// Module Name: fsm_1010_mealy
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

//NON-OVERLAPPING
module fsm_1010_mealy(
input clk,rst,d_in,output reg detected
    );
    reg [1:0] ps,ns;
    parameter idle=2'b00;
    parameter s1=2'b01;
    parameter s2=2'b10;
    parameter s3=2'b11;
    
    //present state logic
    always@(posedge clk) begin
      if(rst)
        ps<=idle;
      else
        ps<=ns;
    end
    
    //next state logic
    always@(*) begin
     case(ps)
       idle:begin
        // detected=0;
         if(d_in==1'b1) 
            ns<=s1;
         else
             ns<=idle;
             end
          
        s1:begin
           if(d_in==1'b0)
              ns<=s2;
           else
              ns<=s1;
           end
           
        s2: begin
            if(d_in==1'b1)
               ns<=s3;
            else
               ns<=idle;
            end
            
         s3:begin
             if(d_in==1'b0)
                 ns<=idle;
                 //detected=1; //output not synchronous with clk
             else
               ns<=s1;
             end
          default:ns<=idle;   
      endcase
      end  
      
      //output logic synchronous with clock
      always@(posedge clk) begin
        if(rst)
           detected=0;
        else
            case(ps)
               idle:detected<=1'b0;
               s1:detected<=1'b0;
               s2:detected<=1'b0;
               s3:begin 
                   if(d_in==1'b0)
                     detected<=1'b1;
                   else
                     detected<=1'b0;
                  end
              default:detected<=1'b0;
            endcase
       end
endmodule
