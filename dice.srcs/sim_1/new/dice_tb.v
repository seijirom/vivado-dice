`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/19 08:54:12
// Design Name: 
// Module Name: dice_tb
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

//`include "dice.v"
module dice_tb ();
reg clock;
reg reset;
wire out1, out2, out3;
dice u1 (
    .clk (clock),
    .sw (reset),
    .x (out1), .y (out2), .z (out3)
    );

initial begin
    reset = 1;
    clock = 1;
    #50000 $finish;
end
always #5000
    clock <= ~clock;
always #10000
    reset <= ~reset;
endmodule
