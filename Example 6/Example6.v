`timescale 1ns / 1ps

// Design Name: EXAMPLE (6) --->>            Write Verilog code for a latch with a positive gate.
// Level Sensitive
// NOT Presence of Clock
module Example6(Q, D, posgt);
output Q;
input D, posgt;
reg Q;
always@(D or posgt)
begin
if(posgt)
Q <= D;
end
endmodule
