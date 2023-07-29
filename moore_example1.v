//20L152-SUMITHA R A
module moore_first_eg(
    input rst,clk,x,
    output reg y
    );
parameter s0=2'b00,s1=2'b01,s2=2'b1,s3=2'b11;
reg[1:0]nxt_st,prst_st;
always@(posedge clk or posedge rst)
begin
if(rst)begin prst_st=s0;y=1'b0;end
	else prst_st=nxt_st;
end
always@(prst_st or x)
begin
  case(prst_st)
  s0:begin y=1'b0;
     if(x==1'b0)nxt_st=s0;
	  else nxt_st=s1;end
  s1:begin y=1'b0;
     if(x==1'b0)nxt_st=s1;
	  else nxt_st=s2;end
  s2:begin y=1'b0;
     if(x==1'b0)nxt_st=s2;
	  else nxt_st=s3;end
  s3:begin y=1'b1;
     if(x==1'b0)nxt_st=s3;
	  else nxt_st=s1;end
  endcase
 end

endmodule
