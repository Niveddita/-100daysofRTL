`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2021 10:33:59
// Design Name: 
// Module Name: FullSubtractor
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


module FullSubtractor(
    input a,
    input b,
    input bin,
    output d,
    output bout
    );
    wire x,xb,xbin,bbin;
    assign x =~a;
    assign xb =x&b;
    assign xbin =x&bin;
    assign bbin =b&bin;
    assign d =a^b^bin;
    assign bout =xb|xbin|bbin;
endmodule

//behavioral model
module FullSubtractor(
    input a,
    input b,
    input bin,
    output reg d,
    output reg bout
    );
    always@ (a or b or bin)
    begin
    d =a^b^bin;
    bout =(~a&bin)|(~a&b)|(b&bin);
    end
    endmodule
