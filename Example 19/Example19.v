`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (19) --->>   Write Verilog code for a 4-bit unsigned up accumulator with an asynchronous clear.
/*
Difference between counter and accumulator

Counter = count +1
Accumulator = count (+or-) any variable or constant.
*/
module Example19(counter, accumulator, clk, clear);

output [3:0]counter;
input [3:0]accumulator;
input clk, clear;
reg [3:0]counter_reg;

always @(posedge clk or posedge clear)    // Sensitivity list
begin

if(clear)
counter_reg <= 4'b0000;
else 
counter_reg <= counter_reg + accumulator;

end
                                     
assign counter = counter_reg;
endmodule
