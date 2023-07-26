//20L152-SUMITHA R A

module fullsubtest;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	fullsub uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.bo(bo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		a=1'b0;b=1'b0;c=1'b0;
		#100 a=1'b0;b=1'b0;c=1'b1;
		#100 a=1'b0;b=1'b1;c=1'b0;
		#100 a=1'b0;b=1'b1;c=1'b1;
		#100 a=1'b1;b=1'b0;c=1'b0;
		#100 a=1'b1;b=1'b0;c=1'b1;
		#100 a=1'b1;b=1'b1;c=1'b0;
		#100 a=1'b1;b=1'b1;c=1'b1;
	
	end
      
endmodule

