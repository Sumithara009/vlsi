//20L152-SUMITHA R A
module mealy_6(input rst,clk,x,output reg y);
parameter si=2'b00,s0=2'b01,s1=2'b10;
reg[1:0]nex_st,pre_st;

always@(posedge clk or posedge rst)
begin
  if(rst) begin pre_st=si;y=1'b0;end
  else pre_st=nex_st;
end
always@(pre_st or x)
begin
   case(pre_st)
	 si:begin if(x==1'b1) begin y=1'b0;nex_st=s1;end
		  else begin y=1'b0;nex_st=s0;end
		 end
	 s0:begin 
	    if(x==1'b1)begin y=1'b1;nex_st=s1; end
	     else begin y=1'b0;nex_st=s0; end
		 end
	 s1:begin 
	    if(x==1'b1) begin y=1'b0;nex_st=s1;end
	    else begin y=1'b0;nex_st=s0; end
		 end
	 endcase
end
endmodule
