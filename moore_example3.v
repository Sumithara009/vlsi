//20L152-SUMITHA R A
module moore_third_eg(
    input clk,rst,in,
    output reg out
    );
parameter A=2'b00,B=2'b01,C=2'b1,D=2'b11;
reg[1:0]nxt_st,prst_st;
always@(posedge clk or posedge rst)
begin
if(rst)begin prst_st=A;out=1'b0;end
	else prst_st=nxt_st;
end
always@(prst_st or in)
begin
  case(prst_st)
  A:begin out=1'b0;
     if(in==1'b0)nxt_st=A;
	  else nxt_st=B;end
  B:begin out=1'b0;
     if(in==1'b0)nxt_st=C;
	  else nxt_st=B;end
  C:begin out=1'b0;
     if(in==1'b0)nxt_st=A;
	  else nxt_st=D;end
  D:begin out=1'b1;
     if(in==1'b0)nxt_st=C;
	  else nxt_st=B;end
  endcase
 end
endmodule
