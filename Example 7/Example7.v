`timescale 1ns / 1ps

// Design Name: EXAMPLE (8) --->>  Write Verilog code for a latch with a positive gate and an asynchronous clear.

module Example7(Q, D, posgt, clear);
output Q;
input D, posgt, clear;
reg Q;
always@(D or posgt or clear)
begin
if(clear)
Q <= 1'b0;
else if (posgt==1'b1)
Q <= D;
end
endmodule