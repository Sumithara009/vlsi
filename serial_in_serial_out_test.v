module sisotest;

	// Inputs
	reg si;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.si(si), 
		.clk(clk), 
		.q(q)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		si = 0;
		clk = 0;
   
		// Wait 100 ns for global reset to finish
		#100;si=1'b1;
		#100;si=1'b0;
		#100;si=1'b1;
		#100;si=1'b0;
        
		// Add stimulus here

	end
      
endmodule

