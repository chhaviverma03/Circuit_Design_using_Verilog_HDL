`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 14:18:14
// Design Name: 
// Module Name: tb_multiple_odd_updown_counter
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


module tb_multiple_odd_updown_counter;

reg clk;
reg rst;
reg enb;
reg [1:0] mode;
reg updown;
wire [1:0] mod_3_count;
wire [2:0] mod_5_count;
wire [2:0] mod_7_count;
wire [3:0] mod_9_count;


// DUT
multiple_odd_updown_counter dut(
    clk,
    rst,
    enb,
    updown,
    mode,
    mod_3_count,
    mod_5_count,
    mod_7_count,
    mod_9_count
);


// Initial values
initial begin
    clk  = 1'b0;
    rst  = 1'b0;
    enb  = 1'b0;
    updown=1'b1;
    mode = 2'b00;
    
end


// Clock
always #5 clk = ~clk;


// Test
initial begin

    // RESET
    rst = 1'b1;
    enb = 1'b0;
    #10;

    rst = 1'b0;

    // MOD-3
    enb  = 1'b1;
    mode = 2'b00;
    #120;

    enb = 1'b0;
 
#10;

    // MOD-5
    enb  = 1'b1;
    mode = 2'b01;
    #150;

    enb = 1'b0;
    #10;

updown=1'b1;
    // MOD-7
    enb  = 1'b1;
    mode = 2'b10;
    #180;
updown=1'b0;
    enb = 1'b0;
    #10;


    // MOD-9
    enb  = 1'b1;
    mode = 2'b11;
    #210;

    enb = 1'b0;
    #100;

    $finish;

end

endmodule