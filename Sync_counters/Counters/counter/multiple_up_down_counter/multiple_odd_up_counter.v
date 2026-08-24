`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 14:17:43
// Design Name: 
// Module Name: multiple_odd_updown_counter
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


//module multiple_odd_updown_counter(
//input clk,rst,enb,
////input updownbar,
//input [1:0]mode,
//output reg [1:0] mod_3_count,
//output reg [2:0] mod_5_count,
//output reg [2:0] mod_7_count,
//output reg [3:0] mod_9_count


//    );
//    reg [3:0] counter_internal;
//    always@(posedge clk) begin
//      if(rst)
//        counter_internal<=4'b0000;
//      else if(enb )
//        counter_internal<=counter_internal+1'b1;
////      else if(enb && ~updownbar)
////        counter_internal<=counter_internal-1'b1;
//      else
//        counter_internal<=counter_internal;
      
//      end
      
//     always@(posedge clk)
//      begin
//        case(mode)
//           2'b00://mod 3 counter
//            begin
//             if(counter_internal<3) 
//                mod_3_count<=counter_internal;
//             else if( counter_internal>=3)
//                mod_3_count<=2'b00;
//             end
             
//            2'b01: //mod 5 counter
//              begin
//                if(counter_internal<5)
//                   mod_5_count<=counter_internal;
//                else if(counter_internal>=5)
//                  mod_5_count<=3'b000;
//              end  
           
//             2'b10: //mod 7 counter
//              begin
//                if(counter_internal<7)
//                   mod_7_count<=counter_internal;
//                else if(counter_internal>=7)
//                  mod_7_count<=3'b000;
//              end  
           
//             2'b11: //mod 9 counter
//              begin
//                if(counter_internal<9)
//                   mod_9_count<=counter_internal;
//                else if(counter_internal>=9)
//                  mod_9_count<=3'b0000;
//              end  
//          default:begin
//          mod_3_count<=0;
//          mod_5_count<=0;
//          mod_7_count<=0;
//          mod_9_count<=0;
//          end
          
//          endcase
//    end
    
//endmodule

module multiple_odd_updown_counter(
    input clk,
    input rst,
    input enb,
    input updown,
    input [1:0] mode,

    output reg [1:0] mod_3_count,
    output reg [2:0] mod_5_count,
    output reg [2:0] mod_7_count,
    output reg [3:0] mod_9_count
);

always @(posedge clk) begin

    if (rst) begin
        mod_3_count <= 0;
        mod_5_count <= 0;
        mod_7_count <= 0;
        mod_9_count <= 0;
    end

    else if (enb) begin

        case (mode)

            // MOD-3
            2'b00: begin
                if (updown) begin
                    if (mod_3_count == 2)
                        mod_3_count <= 0;
                    else
                        mod_3_count <= mod_3_count + 1'b1;
                end
                else begin
                    if (mod_3_count == 0)
                        mod_3_count <= 2;
                    else
                        mod_3_count <= mod_3_count - 1'b1;
                end
            end

            // MOD-5
            2'b01: begin
                if (updown) begin
                    if (mod_5_count == 4)
                        mod_5_count <= 0;
                    else
                        mod_5_count <= mod_5_count + 1'b1;
                end
                else begin
                    if (mod_5_count == 0)
                        mod_5_count <= 4;
                    else
                        mod_5_count <= mod_5_count - 1'b1;
                end
            end

            // MOD-7
            2'b10: begin
                if (updown) begin
                    if (mod_7_count == 6)
                        mod_7_count <= 0;
                    else
                        mod_7_count <= mod_7_count + 1'b1;
                end
                else begin
                    if (mod_7_count == 0)
                        mod_7_count <= 6;
                    else
                        mod_7_count <= mod_7_count - 1'b1;
                end
            end

            // MOD-9
            2'b11: begin
                if (updown) begin
                    if (mod_9_count == 8)
                        mod_9_count <= 0;
                    else
                        mod_9_count <= mod_9_count + 1'b1;
                end
                else begin
                    if (mod_9_count == 0)
                        mod_9_count <= 8;
                    else
                        mod_9_count <= mod_9_count - 1'b1;
                end
            end

        endcase
    end

end

endmodule
