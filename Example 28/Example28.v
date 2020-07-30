`timescale 1ns / 1ps

// Design Name: Write Verilog code for resource sharing.
 
module Example28(res, a, b, c, oper);
output reg [7:0] res;
input [7:0] a, b, c;
input oper;

always @(a or b or c or oper)

begin

if(oper)
	res <= a + b;
else 
	res <= a - c;

end
endmodule
