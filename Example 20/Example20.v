`timescale 1ns / 1ps

// Design Name 20:  Write Verilog code for an 8-bit shift-left register with a positive-edge clock, serial in and serial out.


/*

serial:               only the contents of the last flip-flop is accessed by the rest of the circuit
parallel:             the contents of one or several of flip-flops other than the last one, is accessed     1--------->0
shift modes:          left, right, etc.
*/

module Example20(sout, sin, clk);
output sout;
input sin,clk;
reg [7:0]temp;

always @(posedge clk)

begin
temp = temp<<1;
temp[0]=sin;
end

assign sout = temp[7];

endmodule
