`timescale 1ns / 1ps

// Design Name: EXAMPLE (4) --->>   Write Verilog code for the flip-flop with a positive-edge clock and clock enable.

module Example4(Q, D, clk, enable);

output Q;
input D, clk, enable;       
reg Q;
always@(posedge clk)   

begin
if(enable)

Q <= D;   
   
end
endmodule