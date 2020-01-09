`timescale 1ns / 1ps

// Design Name: EXAMPLE (5) --->>   Write Verilog code for a 4-bit register with a positive-edge clock, asynchronous set and clock enable.

module Example5(Q, D, clk, set, enable);
output [3:0]Q;
input [3:0]D; 
input clk, set, enable;       
reg [3:0]Q;
always@(posedge clk or posedge set)   // Change on negative edge always 

begin
if(set==1'b1)
Q <= 4'b1111;
else if(enable==1'b1)
Q <= D;   
   
end
endmodule
