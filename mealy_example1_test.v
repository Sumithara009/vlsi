//20L152-SUMITHA R A
module mealy_6_test;

	// Inputs
	reg rst;
	reg clk;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mealy_6 uut (
		.rst(rst), 
		.clk(clk), 
		.x(x), 
		.y(y)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100  rst=0;x=1;
		#100  rst=0;x=1;
		#100  x=0;
      #100  x=1;
		#100  x=0;
      #100  x=1;
		#100  x=0;
      #100  x=1;
		#100  x=0;
      #100  x=1;
		// Add stimulus here

	end
      
endmodule
