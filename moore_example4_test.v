//20L152-SUMITHA R A
module moore_four_eg_test;

	// Inputs
	reg clk;
	reg rst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	moore_four_eg uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out)
	);
  always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1;in=1;
		#100 rst=1;in=0;
		#100 rst=0;in=1;
		#100 in=0;
		#100 in=1;
		#100 in=0;
		#100 in=1;
		#100 in=0;
		#100 in=1;
        
		// Add stimulus here

	end
      
endmodule

