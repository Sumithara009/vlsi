//20L152-SUMITHA R A
module mealy_model_four(x,clk,rst,out);
input clk,rst,x;
output reg out;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b10;
reg[2:0]pre,nex;
always @(posedge clk,posedge rst)
begin
if(rst)
pre=2'b00;
else
pre=nex;
end
always @(pre,x)
begin
case(pre)
s0:begin
if(x==2'b00)
nex=s0;
else if(x==2'b01)
pre=s1;
else if(x==2'b10)
pre=s2;
else
pre=s3;
end
s1:begin
if(x==2'b00)
nex=s0;
else if(x==2'b01)
nex=s1;
else if(x==2'b10)
nex=s2;
else
nex=s3;
end
s2:begin
if(x==2'b00)
nex=s0;
else if(x==2'b01)
nex=s1;
else if(x==2'b10)
nex=s2;
else
nex=s3;
end
s3:begin
if(x==2'b00)
nex=s2;
else if(x==2'b01)
nex=s1;
else if(x==2'b10)
nex=s0;
else
nex=s3;
out=1'b1;
end
default:nex=s0;
endcase
end
always @(pre)
begin 
 case(pre) 
 s0:  out = 0;
 s1:  out = 1;
 s2:  out = 0;
 s3: out = 0;
 default:  out = 0;
 endcase
end 
endmodule
