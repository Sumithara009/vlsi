//20L152-SUMITHA R A
module magcom(
    input a,b,
    output reg l,e,g
    );
always@(*)
begin
   if(a<b)
   begin
     l=1;
	  e=0;
	  g=0;
   end
	 if(a==b)
   begin
     l=0;
	  e=1;
	  g=0;
   end
	 if(a>b)
   begin
     l=0;
	  e=0;
	  g=1;
   end
end
endmodule
