`timescale 1ns/1ps

module async_rst_tb;
reg data,rst,clk;

initial begin
data=0;
rst=1;
clk=0;
forever #25 clk=~clk;
end

initial begin
#20 data=0'b0;
#20 data=0'b1;
#20 rst=0;
#20 rst=1;
#20 data=0;
#20 data=1;
forever #20 data=~data;
end

async_rst uasync(.data(data),
.rst(rst),
.clk(clk),
.out(out));
endmodule