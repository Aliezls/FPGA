module Counter(input clk,rst,
output reg [3:0] r_Num);

//reg[3:0] r_Num;

always @(posedge clk or negedge rst) begin
if(!rst) begin
r_Num<=0;
end
else if(r_Num<15) begin
r_Num<=r_Num+1;
end
else begin
r_Num<=0;
end
end

//assign o_Num=r_Num;

endmodule