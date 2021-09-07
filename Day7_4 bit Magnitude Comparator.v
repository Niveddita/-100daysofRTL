`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2021 21:02:25
// Design Name: 
// Module Name: comparator4
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


module comparator4(
input [3:0] a,
input [3:0] b,
output reg alb,
output reg aeb,
output reg agb
    );
    always@ (a or b)
    begin
    if(a>b)
    begin
    alb=0;
    aeb=0;
    agb=1;
    end
    else if(a==b)
    begin
    alb=0;
    aeb=1;
    agb=0;
    end
    else
    begin
    alb=1;
    aeb=0;
    agb=0;
    end
    end
    
    
endmodule
