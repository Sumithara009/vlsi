//20L152-SUMITHA R A
module mux4to1test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		//first set of inputs combinations
		i0 = 1;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;s0 = 1;s1 = 0;
      #100;s0 = 0;s1 = 1;
	   #100;s0 = 1;s1 = 1;	
		// Add stimulus here

     //second set of inputs combinations
	   #100 i0 = 1;
		i1 = 1;
		i2 = 0;
		i3 = 0;
		s0 = 0;
		s1 = 0;
		#100;s0 = 1;s1 = 0;
      #100;s0 = 0;s1 = 1;
	   #100;s0 = 1;s1 = 1;	
	end
      
endmodule

