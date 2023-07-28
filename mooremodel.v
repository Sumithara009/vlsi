//20L152-SUMITHA R A

module moore(input rst,clk,x,
output y);
parameter s0=2'b00,s1=2'b01,s2=2'b1,s3=2'b11;
res[1:0]nxt_st,prst_st;
always@(posedge clk or posedge rst)
begin
   if(rst)begin prst_st=s0;y=1'b1;end
	else prst_st=nxt_st;
end
always@(prst_st or x)
begin
  case(prst_st)
  s0:begin y=1'b1;
     if(x==1'b1)nxt_st=s0;
	  else nxt_st=s1;end
  s1:begin y=1'b0;
     if(x==1'b1)nxt_st=s2;
	  else nxt_st=s3;end
  s2:begin y=1'b1;
     if(x==1'b1)nxt_st=s0;
	  else nxt_t=s2;end
  s3:begin y=1'b0;
     if(x==1'b1)nxt_st=s2;
	  else nxt_st=s3;end
  endcase
 end
endmodule
