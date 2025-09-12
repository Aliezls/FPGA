module async_rst(input wire data,clk,rst,
output reg out);

always @(posedge clk or negedge rst)
begin
if(!rst) begin
out<=0;
end
else begin
out<=data;
end
end

endmodule