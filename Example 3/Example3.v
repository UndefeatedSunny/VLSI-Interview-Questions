`timescale 1ns / 1ps

// Design Name: EXAMPLE (3) --->> Write Verilog code for the flip-flop with a positive-edge clock and synchronous set

module Example3(Q, D, clk, set);
output Q;
input D, clk, set;       
reg Q;
always@(posedge clk)   

begin
if(set)
Q <= 1'b1;
else
Q <= D;   
   
end
endmodule

