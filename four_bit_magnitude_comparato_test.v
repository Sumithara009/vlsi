//20L152-SUMITHA R A
module fourbitmagcom_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [2:0] o;

	// Instantiate the Unit Under Test (UUT)
	mag4com uut (
		.a(a), 
		.b(b), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
	  	#100 a=4'b0001;b=4'b0011;
      #100 a=4'b0101;b=4'b1011;
      #100 a=4'b1101;b=4'b1011;
      #100 a=4'b0011;b=4'b0011;
      #100 a=4'b1001;b=4'b0011;
      #100 a=4'b0001;b=4'b0011;
      #100 a=4'b1111;b=4'b1101;
        
		// Add stimulus here

	end
      
endmodule


