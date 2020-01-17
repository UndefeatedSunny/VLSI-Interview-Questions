
`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (14) --->>   Write Verilog code for a 4-bit unsigned up counter with a synchronous load with a constant.

module Example14(counter, clk, load);

output [3:0]counter;
input clk, load;
reg [3:0]counter_reg;

always @(posedge clk)
begin
if(load)
counter_reg <= 4'b0110;
else 
counter_reg <= counter_reg + 4'b0001;
end

assign counter = counter_reg;

endmodule