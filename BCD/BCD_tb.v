`timescale 1ns / 1ps

module bin2bcd_tb(

    );
 parameter INPUT_WIDTH = 6;
 parameter DECIMAL_DIGITS = 2;

 reg i_Clock;
 reg [INPUT_WIDTH - 1 : 0] i_Binary;
 reg i_Start;
 wire [DECIMAL_DIGITS * 4 - 1 : 0] o_BCD;
 wire o_DV;


 initial begin
  i_Clock = 0;
  forever begin
   #5 i_Clock = ~i_Clock;
  end
 end

 initial begin
  i_Start = 0;

  i_Binary = 31;

  repeat(5) @(posedge i_Clock);
  i_Start = 1;

  repeat(6) @(negedge i_Clock);
  i_Binary = 18; 

 end


 bin2bcd #(.INPUT_WIDTH(INPUT_WIDTH), .DECIMAL_DIGITS(DECIMAL_DIGITS))
 inst_bin2bcd(
  .i_Clock(i_Clock),
  .i_Binary(i_Binary),
  .i_Start(i_Start),
  .o_BCD(o_BCD),
  .o_DV(o_DV)
  );


endmodule