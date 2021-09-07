`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 13:29:16
// Design Name: 
// Module Name: Half Adder
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


module HalfAdder(
    input a,
    input b,
    output s,
    output c
    );
    assign s =a^b;
    assign c =a&b;
endmodule

//Behavioral
module HalfAdder(
    input a,
    input b,
    output reg s,
    output reg c
    );
    always@ (a or b)
    begin
    s =a^b;
    c =a&b;
    end
    endmodule