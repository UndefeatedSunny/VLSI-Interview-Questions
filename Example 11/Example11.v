
`timescale 1ns / 1ps

// Design Name: EXAMPLE (11) --->>   Write Verilog code for a 4-bit unsigned up counter with asynchronous clear

module Example11(counter, clk, clear);

output [3:0]counter;
input clk, clear;
reg [3:0]counter_reg;

always @(posedge clk or posedge clear)
begin
if(clear)
counter_reg <= 4'b0000;
else 
counter_reg <= counter_reg + 4'b0001;
end

//                                               assign counter <= counter_reg;     -->> Line 20: Syntax error near "<=".                                       
assign counter = counter_reg;
endmodule
