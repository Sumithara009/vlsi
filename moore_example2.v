//20L152-SUMITHA R A
module moore_sec_eg(
    input rst,clk,in,
    output reg out
    );
parameter w=2'b00,x=2'b01,y=2'b10;
reg[1:0]nxt_st,prst_st;
always@(posedge clk or posedge rst)
begin
if(rst)begin prst_st=w;out=1'b0;end
	else prst_st=nxt_st;
end
always@(prst_st or in)
begin
  case(prst_st)
  w:begin out=1'b0;
     if(in==1'b1)nxt_st=x;
	  else nxt_st=y;end
  x:begin out=1'b1;
     if(in==1'b1)nxt_st=y;
	  else nxt_st=x;end
  y:begin out=1'b0;
     if(in==1'b1)nxt_st=w;
	  else nxt_st=x;end
  endcase
 end
endmodule
