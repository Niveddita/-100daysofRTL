
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2021 21:26:08
// Design Name: 
// Module Name: decoder38
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


module decoder38(
    input e,
    input s0,
    input s1,
    input s2,
    output d0,
    output d1,
    output d2,
    output d3,
    output d4,
    output d5,
    output d6,
    output d7
    );
    wire ne,ns0,ns1,ns2;
    not(ne,e);
    not(ns0,s0);
    not(ns1,s1);
    not(ns2,s2);
    and(d0,e,ns0,ns1,ns2);
    and(d1,e,ns0,ns1,s2);
    and(d2,e,ns0,s1,ns2);
    and(d3,e,ns0,s1,s2);
    and(d4,e,s0,ns1,ns2);
    and(d5,e,s0,ns1,s2);
    and(d6,e,s0,s1,ns2);
    and(d7,e,s0,s1,s2);
endmodule

//behavior


module decoder38(
input s0,
input s1,
input s2,
input e,
output reg d0,
output reg d1,
output reg d2,
output reg d3,
output reg d4,
output reg d5,
output reg d6,
output reg d7,
output reg out
);
 always @(s0 or s1 or s2 or e)
	begin
 
      if (e) 
        begin
          out=8'd0;
          case ({s0,s1,s2})
              3'b000: d0=1'b1;
              3'b001: d1=1'b1;
              3'b010: d2=1'b1;
              3'b011: d3=1'b1;
              3'b100: d4=1'b1;
              3'b101: d5=1'b1;
              3'b110: d6=1'b1;
              3'b111: d7=1'b1;
              default: out=8'd0;
          endcase
      end
else 
out=8'd0;
end
endmodule

//data level
module decoder38(
    input e,
    input s0,
    input s1,
    input s2,
    output d0,
    output d1,
    output d2,
    output d3,
    output d4,
    output d5,
    output d6,
    output d7
    );
    wire ns0,ns1,ns2;
    assign ns0=~s0;
    assign ns1=~s1;
    assign ns2=~s2;
    assign d0= e&ns0&ns1&ns2;
    assign d1= e&ns0&ns1&s2;
    assign d2= e&ns0&s1&ns2;
    assign d3= e&ns0&s1&s2;
    assign d4= e&s0&ns1&ns2;
    assign d5= e&s0&ns1&s2;
    assign d6= e&s0&s1&ns2;
    assign d7= e&s0&s1&s2;
    endmodule
