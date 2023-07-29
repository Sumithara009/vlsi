//20L152-SUMITHA R A
module moore_first_eg_test;

	// Inputs
	reg rst;
	reg clk;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	moore_first_eg uut (
		.rst(rst), 
		.clk(clk), 
		.x(x), 
		.y(y)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1'b0;x=1'b0;
		#100 rst=1'b0;x=1'b1;
		#100 rst=1'b1;x=1'b0;
		#100 rst=1'b1;x=1'b1;
        
		// Add stimulus here

	end
      
endmodule

