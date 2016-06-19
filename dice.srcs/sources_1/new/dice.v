`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/18 23:20:33
// Design Name: 
// Module Name: dice
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


module dice(
    input clk,
    input sw,
    output reg x,
    output reg y,
    output reg z
    );
 
initial begin
   x = 0;
   y = 1;
   z = 1;
end
 
wire xa, xb, xc, xd, xe, xf;
wire ya, yb, yc, yd, ye, yf, yg, yh;
wire za, zb, zc, zd, ze, zf, zg, zh;

assign xa = ~sw & ~x & y & z;
assign xb = sw & x & ~y & z;
assign xc = ~sw & ~x & ~y & z;
assign xd = sw & x & y & ~z;
assign xe = ~sw & ~x & y & ~z;
assign xf = sw & x & ~y & ~z;
assign ya = ~sw & ~x & ~y & ~z;
assign yb = ~sw & x & y & z;
assign yc = sw & ~x & y & z;
assign yd = ~sw & ~x & ~y & z;
assign ye = sw & x & y & ~z;
assign yf = ~sw & x & y & ~z;
assign yg = sw & ~x & y & ~z;
assign yh = ~sw & x & ~y & ~z;
assign za = ~sw & ~x & ~y & ~z;
assign zb = ~sw & x & y & z;
assign zc = sw & ~x & y & z;
assign zd = ~sw & ~x & y & z;
assign ze = sw & x & ~y & z;
assign zf = ~sw & x & ~y & z;
assign zg = sw & ~x & ~y & z;
assign zh = ~sw & x & ~y & ~z;

always @ (posedge clk)
  begin      
    x <= xa|xb|xc|xd|xe|xf;
    y <= ya|yb|yc|yd|ye|yf|yg|yh;
    z <= za|zb|zc|zd|ze|zf|zg|zh;
  end
endmodule
