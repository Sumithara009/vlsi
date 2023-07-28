//20L152-SUMITHA R A
module mealy(
    input x,rst,clk,
    output reg y
    );
    reg[1:0] pre_st,nex_st;
	 parameter s0=2'b00; 
	 parameter s1=2'b01;
	 parameter s2=2'b10;
	 parameter s3=2'b11;
	 always@(posedge clk or posedge rst)
	 begin
		 if(rst)
		   begin
		     pre_st=s0;
			  y=1'b0;
		   end
		 else
		     pre_st=nex_st;
	 end
	 
	 always@(pre_st or x)
	 begin
		 case(pre_st)
		   s0: begin if(x==1'b1)begin y=1'b1;nex_st=s0;end
					 else begin y=1'b0;nex_st=s1;end 
             end					 
			s1: begin if(x==1'b1)begin y=1'b0;nex_st=s3;end 
                else begin y=1'b1;nex_st=s2;end
			    end
			s2: begin if(x==1'b1)begin y=1'b0;nex_st=s1;end
                else begin y=1'b1;nex_st=s0; end
				 end
         s3: begin if(x==1'b1)begin y=1'b1;nex_st=s2;end
                else begin y=1'b0;nex_st=s3;end
             end					 
			endcase	 
    end			
endmodule
