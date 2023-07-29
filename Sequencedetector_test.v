//20L152-SUMITHA R A
module sequencedetectortest;

	// Inputs
	reg clk;
	reg rst;
	reg sequence;

	// Outputs
	wire tick;

	// Instantiate the Unit Under Test (UUT)
	sequencedetector uut (
		.clk(clk), 
		.rst(rst), 
		.sequence(sequence), 
		.tick(tick)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		sequence = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1'b0;sequence=1'b0;
		#100 rst=1'b0;sequence=1'b1;
		#100 rst=1'b1;sequence=1'b0;
		#100 rst=1'b1;sequence=1'b1;
        
        
		// Add stimulus here

	end
      
endmodule

