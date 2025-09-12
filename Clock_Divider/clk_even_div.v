module clk_even_div(
input clk,
input rst,
output reg out);

parameter Num_div=2;
reg[0:3] cnt;

always @(posedge clk or negedge rst) begin//?????????????????????????2
if(!rst)begin
cnt<=4'd0;
out<=1'd0;
end
else if(cnt<Num_div/2 -1) begin
cnt<=cnt+1'b1;
out<=out;
end
else begin
cnt<=4'd0;
out<=~out;
end
end
endmodule
