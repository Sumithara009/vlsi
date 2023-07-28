//20L152-SUMITHA R A
module upcounter_test;

	// Inputs
	reg clk;
	reg reset;
	reg up_down;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	updowncounter uut (
		.clk(clk), 
		.reset(reset), 
		.up_down(up_down), 
		.count(count)
	);

		// Wait 100 ns for global reset to finish
		always #100 clk=~clk;
	   initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		up_down = 0;

		// Wait 100 ns for global reset to finish
		#100;reset=0;up_down=1;
		#100;reset=1;up_down=0;
        
		// Add stimulus here

	end
      
endmodule

