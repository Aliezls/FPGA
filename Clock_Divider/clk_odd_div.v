module clk_odd_div#(parameter Num_div=7)(input clk,
input rst,
output wire div);


reg[2:0] cnt1;
reg[2:0] cnt2;
reg div1,div2;

always @(posedge clk or negedge rst) begin
if(!rst)
cnt1<=0;
else if(cnt1<Num_div-1)
cnt1<=cnt1+1'b1;
else
cnt1<=0;
end

always @(posedge clk or negedge rst) begin
if(!rst)
div1<=1'b1;
else if(cnt1<Num_div/2)
div1<=1'b1;
else
div1<=1'b0;
end

always @(negedge clk or negedge rst) begin
    if(!rst)
       cnt2 <= 0;
    else if(cnt2 < Num_div - 1)
       cnt2 <= cnt2 + 1'b1;
    else 
       cnt2 <= 0;
end
always @(negedge clk or negedge rst) begin
    if(!rst)
        div2 <= 1'b1;
    else if(cnt2 < Num_div / 2) 
        div2 <= 1'b1;
    else
        div2 <= 1'b0;
end        
    assign div = div1 | div2;
endmodule
//????????40%???,????0~40%?????10%~50%??????50%???
//???div??1bit????div1?div2????
//?JB?????