`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2021 09:51:41
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire ab,bc,ca;
    assign s =a^b^cin;
    assign ab =a&b;
    assign bc =b&cin;
    assign ca =a&cin;
    assign cout =ab|bc|ca;
endmodule

//behavioral model
module FullAdder(
    input a,
    input b,
    input cin,
    output reg s,
    output reg cout
    );
    always@ (a or b or cin)
    begin
    s =a^b^cin;
    cout =(a&b)|(b&cin)|(cin&a);
    end
    endmodule
