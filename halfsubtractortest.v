module halfsubtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	halfsub uut (
		.a(a), 
		.b(b), 
		.d(d), 
		.bo(bo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b0;
      #100;a=1'b0;b=1'b1;
      #100;a=1'b1;b=1'b0;
      #100;a=1'b1;b=1'b1;		
		// Add stimulus here

	end
      
endmodule
