//20L152-SUMITHA R A

module Dflipfloptest;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	Dflipflop uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;d=1'b0;clk=1'b0;
		#100;d=1'b0;clk=1'b1;
      #100;d=1'b1;clk=1'b0;
		#100;d=1'b1;clk=1'b1; 
		// Add stimulus here

	end
      
endmodule

