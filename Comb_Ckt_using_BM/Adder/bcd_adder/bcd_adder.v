`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 17:18:55
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
input [3:0]a_bcd,b_bcd ,input cin,
output [3:0]sum_bcd ,output cout_bcd
    );
    wire [3:0]sum_temp;
    wire cout_temp;
    wire [3:0]b_ra2;
    wire a_1,a_2,o_1;
    wire cout_ra2;
   
    ripple_adder ra1(a_bcd,b_bcd,cin,sum_temp,cout_temp);
    and a1(a_1,sum_temp[2],sum_temp[3]);
    and a2(a_2,sum_temp[1],sum_temp[3]);
    or o1(o_1,a_1,a_2,cout_temp);
    assign b_ra2[0]=1'b0;
    assign b_ra2[1]=o_1;
    assign b_ra2[2]=o_1;
    assign b_ra2[3]=1'b0;
    
    ripple_adder ra2(sum_temp,b_ra2,0,sum_bcd,cout_ra2);
    assign cout_bcd=cout_temp |cout_ra2;
endmodule
