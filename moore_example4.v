//20L152-SUMITHA R A
module moore_four_eg(
    input clk,rst,in,
    output reg out
    );
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg[1:0]pre_st,nex_st;
always @(posedge clk,posedge rst)
begin
if(rst)
pre_st=1'b0;
else
pre_st=nex_st;
end
always@(pre_st,in)
begin
case(pre_st)
s0:begin if(in) nex_st=s1;
   else nex_st=s0;
   end
s1:begin if(in) nex_st=s2;
   else nex_st=s1;
   end
s2:begin if(in) out=1'b1;
   nex_st=s3;
   end
s3:begin if(in) nex_st=s2;
   else nex_st=s3;
   end
default:nex_st=s0;
endcase
end
always @(pre_st)
begin
 case(pre_st)
 s0:   out = 0;
 s1:   out = 0;
 s2:   out = 1;
 s3:   out = 0;
 default:  out = 0;
 endcase
end
endmodule
