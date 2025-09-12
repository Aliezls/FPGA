`timescale 1ns/1ps

module clk_even_div_tb;
reg clk,rst;
wire out;

clk_even_div uut(.clk(clk),.rst(rst),.out(out));

always #10 clk=~clk;

initial begin 
clk=0;rst=0;
#100
rst=1;
end
endmodule
