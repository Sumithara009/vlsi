//20L152-SUMITHA R A
module maly_model_four_test;

	// Inputs
	reg x;
	reg clk;
	reg rst;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mealy_model_four uut (
		.x(x), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1;x=1;
		#100 rst=1;x=0;
		#100 rst=0;x=1;
      #100 x=0;
		#100 x=1;
		 #100 x=0;
		#100 x=1;
		 #100 x=0;
		#100 x=1;
		 #100 x=0;
		#100 x=1;
		// Add stimulus here

	end
      
endmodule

