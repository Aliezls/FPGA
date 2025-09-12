`timescale 1ns/1ps

module clk_odd_div_tb;
reg clk;
reg rst;

wire div;

clk_odd_div #(.Num_div(3)) utt(.clk(clk),.rst(rst),.div(div));

always #10 clk=~clk;

initial begin 
clk=0;
rst=0;
#100;

rst=1;
end

endmodule
