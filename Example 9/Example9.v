`timescale 1ns / 1ps

// Design Name: EXAMPLE (9) --->>     Write Verilog code for a tristate element using a combinatorial process and always block.

module Example9(out, in, control);                     // If uses simple control input.
output out;
input in, control;
reg out;
always @(in or control)
begin                                                //    If uses simple control input complement or bar.
if(control == 1'b1)                                  //    if(control == 1'b0)
out = in;
else 
out = 1'bZ;

end
endmodule
