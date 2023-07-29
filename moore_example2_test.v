//20l152-SUMITHA R A
module moore_sec_eg_test;

	// Inputs
	reg rst;
	reg clk;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	moore_sec_eg uut (
		.rst(rst), 
		.clk(clk), 
		.in(in), 
		.out(out)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		 #30;rst = 0;
       #40;in = 1;
       #10;rst = 1;in= 0;
       #10;in= 1; 
       #20;in = 0; 
       #20; rst=0;in = 1; 
       #20;in = 0; 
        
		// Add stimulus here

	end
      
endmodule

