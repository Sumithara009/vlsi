//20lL152-SUMITHA R A

module sisotest;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.d(d), 
		.clk(clk), 
		.q(q)
	);
always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;d=1;
		
        
		// Add stimulus here

	end
      
endmodule

