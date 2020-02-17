`timescale 1ns / 1ps

// Design Name: Write Verilog code for an 4-bit shift-left register with a negative-edge clock, a clock enable, a serial in and a serial out.

module Example21(sout, sin, clk, enable);
output sout;
input sin,clk,enable;
reg [7:0]temp;             

always @(negedge clk)

begin

if(enable)
begin
temp = temp<<1;
temp[0]=sin;
end

end
assign sout = temp[7];   

endmodule
