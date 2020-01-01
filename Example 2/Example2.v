`timescale 1ns / 1ps

// Design Name: EXAMPLE (2) --->> Write Verilog code for a flip-flop with a negative-edge clock and asynchronous clear

module Example2(Q, D, clk, clear);
output Q;
input D, clk, clear;       
reg Q;
always@(negedge clk or posedge clear)   // Change on negative edge always 

begin
if(clear)
Q <= 1'b0;
else
Q <= D;   
   
end
endmodule
