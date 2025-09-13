`timescale 1ns/1ps

module Counter_tb;
reg clk,rst;
wire[3:0] r_Num;
Counter ut(.clk(clk),.rst(rst),.r_Num(r_Num));

initial begin
clk=0;
rst=1;
#50;
rst=0;
#50;
rst=1;
end

always #20 clk=~clk;

endmodule
