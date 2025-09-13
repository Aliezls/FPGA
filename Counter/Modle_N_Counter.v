module Modle_N_Counter#(parameter N=4)(input clk,rst,
output reg[3:0] Num);
always @(posedge clk or negedge rst)
if(!rst) begin
Num<=0;
end
else if(Num<N-1) begin
Num<=Num+1;
end
else begin
Num<=0;
end
endmodule
