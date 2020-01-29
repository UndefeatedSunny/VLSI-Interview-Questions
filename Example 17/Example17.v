
`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (17) --->>   Write Verilog code for a 4-bit signed up counter with an asynchronous reset.

module Example17(counter, clk, reset);

output signed [4:0]counter;
input clk, reset;
reg signed [4:0]counter_reg;

always @(posedge clk or posedge reset)
begin
if(reset)
counter_reg <= 5'b00000;
else 
counter_reg <= counter_reg + 5'b00001;
end

assign counter = counter_reg;

endmodule