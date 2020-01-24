`timescale 1ns / 1ps
 
// Design Name: EXAMPLE (10) --->>   Write Verilog code for a tristate element using a concurrent assignment.

module Example10(out, in, control);
output out;
input in, control;

// always @(in or control)

assign out = (control) ? in : 1'bZ ;

endmodule
