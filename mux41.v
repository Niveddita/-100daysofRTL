`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2021 19:46:38
// Design Name: 
// Module Name: mux41
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


module mux41(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output out
    );
    wire ns0,ns1;
    wire y0,y1,y2,y3;
    not(ns0,s0);
    not(ns1,s1);
    and(y0,a,ns0,ns1);
    and(y1,b,ns0,s1);
    and(y2,c,s0,ns1);
    and(y3,d,s0,s1);
    or(out,y0,y1,y2,y3);
endmodule

//behavioral
module mux41 ( a, b, c, d, s0, s1, out);

input wire a, b, c, d;
input wire s0, s1;
output reg out;

always @ (a or b or c or d or s0 or s1)
begin

case (s0 | s1)
2'b00 : out <= a;
2'b01 : out <= b;
2'b10 : out <= c;
2'b11 : out <= d;
endcase

end

endmodule

module mux41(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output out
    );
    assign out =(~s0&~s1&a)|(s1&~s0&b)|(s0&~s1&c)|(s0&s1&d);
    endmodule
