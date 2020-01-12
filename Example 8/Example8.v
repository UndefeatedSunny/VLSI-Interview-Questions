`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (8) --->>  Write Verilog code for a 4-bit latch with an inverted gate and an asynchronous preset 

module Example8(Q, D, posgt, preset);
output [3:0]Q;
input [3:0]D;
input posgt, preset;
reg [3:0]Q;
always@(D or posgt or preset)
begin
if(preset)
Q <= 4'b1111;
else if(~posgt)
Q <= D;
end
endmodule
