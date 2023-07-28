//20L152-SUMITHA R A
module mag4com(
input [3:0]a,b,
    output reg [2:0]o
    );
always @ (a,b)
    begin 
        if (a < b)
		  begin
            o[0]=0;
				o[1]=0;
				o[2]=1;
				end  
        else if (a == b)
		  begin
            o[0]=1;
				o[1]=0;
				o[2]=0;    
			end  				
		  else
		  begin
           o[0]=0;
			  o[1]=1;
			  o[2]=0;
			  end  
end  
endmodule
