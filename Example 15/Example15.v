
`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (15) --->>   Write Verilog code for a 4-bit unsigned up counter with an asynchronous clear and clock enable.

module Example15(counter, clk, clear, enable);

output [3:0]counter;
input clk, clear, enable;
reg [3:0]counter_reg;

always @(posedge clk or posedge clear)
begin
if(clear)
counter_reg <= 4'b0000;
else if(enable) 
counter_reg <= counter_reg + 4'b0001;
end

assign counter = counter_reg;

endmodule