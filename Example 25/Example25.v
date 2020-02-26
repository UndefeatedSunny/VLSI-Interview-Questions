`timescale 1ns / 1ps

// Design Name: Write Verilog code for an 8-bit shift-left register with a positive-edge clock, an asynchronous parallel load, a serial in and a serial out.
module Example25(sout, sin, in, clk, load);
output sout;
input sin,clk,load;
input[7:0]in;
reg [7:0]temp;

always @(posedge clk or posedge load)

begin 

if(load)
begin
temp=in;
end

else

begin
temp = temp<<1;
temp[0]=sin;
end

end

assign sout = temp[7];

endmodule

