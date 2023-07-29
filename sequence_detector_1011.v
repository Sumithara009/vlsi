//20L152-SUMITHA R A
module seq_det_1011(
    input clk,rst,sequence,
    output reg tick
    );

localparam A=2'b00;
localparam B=2'b01;
localparam C=2'b10;
localparam D=2'b11;
reg[1:0]pre_st,nex_st;
always@(posedge clk or posedge rst)
begin
  if(rst)pre_st<=A;
  else pre_st<=nex_st;
end

always@(*)
begin
   pre_st=nex_st;
	tick=1'b0;
   case(pre_st)
      A:if(sequence)nex_st=B;
		  else nex_st=A;
		B: begin
		   if(sequence)nex_st=B;
			else nex_st=C;
			end
		C: begin
		   if(sequence)nex_st=D;
			else nex_st=A;
			end
		D: begin
		    if(sequence)
			  begin
			   nex_st=B;
				tick=1'b1;
			  end
			 else nex_st=C;
			end
		default: begin
		         nex_st=A;
			      tick=1'b0;
			      end	 
	 endcase
end
endmodule

