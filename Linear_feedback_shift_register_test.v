module lfsrtest;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	lfsr uut (
		.rst(rst), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1'b1;clk=1'b1;
		#100 rst=1'b0;clk=1'b0;
		#100 clk=1'b1;
		#100 clk=1'b0;
		#100 clk=1'b1;
		#100 clk=1'b0;
      #100 clk=1'b1;
		#100 clk=1'b0;
		#100 clk=1'b1;
		#100 clk=1'b0;
		#100 clk=1'b1;
		#100 clk=1'b0;
		#100 clk=1'b1;
		#100 clk=1'b0;
		
		// Add stimulus here

	end
      
endmodule

