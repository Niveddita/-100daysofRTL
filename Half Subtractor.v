`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 20:52:55
// Design Name: 
// Module Name: Half Subtractor
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


module HalfSubtractor(
    input a,
    input b,
    output d,
    output bo
    );
    assign d =a^b;
    assign bo =~a&b;
endmodule

//behavioral model

module HalfSubtractor(
    input a,
    input b,
    output reg d,
    output reg bo
    );
    always@ (a or b)
    begin
    d =a^b;
    bo =~a&b;
    end 
    endmodule