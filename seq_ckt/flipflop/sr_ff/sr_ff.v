`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 18:54:05
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
input clk,rst,s,r,output reg q,qbar
    );
//    always@(posedge clk) begin
//      if(rst)begin
//         q<=1'b0;
//         qbar<=1'b1;
//         end
//      else if(s==0 && r==0) begin
//        q<=q;
//        qbar<=qbar;
//      end
      
//      else if(s==0 && r==1) begin 
//        q<=1'b0;
//        qbar<=1'b1;
//      end
      
//      else if(s==1 && r==0) begin
//        q<=1'b1;
//        qbar<=1'b0;
//      end
      
//      else if(s==1 && r==1) begin
//        q<='bx;
//        qbar<='bx;
//      end
//      end
     
     //using cse method
//     always@(posedge clk) begin
//      if(rst) begin 
//       q<=1'b0;
//       qbar<=1'b1;
//       end
//       else begin
//       case({s,r}) 
//       2'b00: begin
//            q<=q;
//            qbar<=qbar;
//            end
//        2'b01: begin
//             q<=1'b0;
//             qbar<=1'b1;
//        end
        
//        2'b10: begin
//             q<=1'b1;
//             qbar<=1'b0;
//             end
//         2'b11:begin
//             q<='bx;
//             qbar<='bx;
//             end
//             default:q<='bx & qbar<='bx;
//             endcase

//asynchronous reset
always@(posedge clk,posedge rst) begin
   if(rst) begin
     q<=1'b0;
     qbar<=1'b1;
     
       end
       else begin
       case({s,r}) 
       2'b00: begin
            q<=q;
            qbar<=qbar;
            end
        2'b01: begin
             q<=1'b0;
             qbar<=1'b1;
        end
        
        2'b10: begin
             q<=1'b1;
             qbar<=1'b0;
             end
         2'b11:begin
             q<='bx;
             qbar<='bx;
             end
             default:begin
             q<='bx & qbar<='bx;
             end
             endcase
             end
            end
endmodule
