//20L152-SUMITHA R A
module magcomtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire l;
	wire e;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	magcom uut (
		.a(a), 
		.b(b), 
		.l(l), 
		.e(e), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100 a=1'b0;b=1'b0;
		#100 a=1'b1;b=1'b0;
		#100 a=1'b0;b=1'b1;
        
		// Add stimulus here

	end
      
endmodule

