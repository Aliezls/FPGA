`timescale 1ns/1ps

module Modle_N_Counter_tb;
reg clk,rst;
wire[3:0] Num;

initial begin
clk=0;
end

always #20 clk=~clk;

initial begin
rst=1;
#40
rst=0;
#20
rst=1;
end

Modle_N_Counter#(.N(10)) utt (.clk(clk),.rst(rst),.Num(Num));

endmodule