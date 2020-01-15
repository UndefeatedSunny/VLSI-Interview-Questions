
`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (12) --->>   Write Verilog code for a 4-bit unsigned down counter with synchronous set 

module Example12(counter, clk, set);

output [3:0]counter;
input clk, set;
reg [3:0]counter_reg;

always @(posedge clk)
begin
if(set)
counter_reg <= 4'b1111;
else 
counter_reg <= counter_reg - 4'b0001;
end

assign counter = counter_reg;

endmodule