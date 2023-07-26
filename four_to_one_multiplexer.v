//20L152-SUMITHA R A
module mux4to1(
    input i0,i1,i2,i3,s0,s1,
    output reg y
    );
 //assign y = s ? i1:i0; - 2:1 mux
 //assign y = s1? (s0?i3:i2):(s0?i1:i0);
 always @(i0,i1,i2,i3,s0,s1)
 begin
 case({s1,s0})//is s ia 2 bit signal then case(s)
  2'b00: y=i0;
  2'b01: y=i1;
  2'b10: y=i2;
 // 2'b11: y=i3;
 default: y=i3;
 endcase
 end 
endmodule
