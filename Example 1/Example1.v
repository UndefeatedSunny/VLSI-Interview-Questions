`timescale 1ns / 1ps

// Design Name: EXAMPLE (1) --->>  Write Verilog code for flip-flop with a positive-edge clock. 

module Example1(Q, D, clk);
output Q;
input D, clk;       
reg Q;
always@(posedge clk)   // Change on positive edge always 
begin

Q <= D;  
             
end
endmodule
