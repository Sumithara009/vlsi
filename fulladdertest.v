//20L152-SUMITHA R A

module fulladdtest;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	fulladd uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b0;cin=1'b0;
		#100;a=1'b0;b=1'b0;cin=1'b1;
		#100;a=1'b0;b=1'b1;cin=1'b0;
		#100;a=1'b0;b=1'b1;cin=1'b1;
		#100;a=1'b1;b=1'b0;cin=1'b0;
		#100;a=1'b1;b=1'b0;cin=1'b1;
		#100;a=1'b1;b=1'b1;cin=1'b0;
		#100;a=1'b1;b=1'b1;cin=1'b1;
        
		// Add stimulus here

	end
      
endmodule

