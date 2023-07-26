//20L152-SUMITHA R A

module binary4test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire co;
	wire [3:0] s;

	// Instantiate the Unit Under Test (UUT)
	binary4 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.co(co), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
      #100 a=4'b0001;b=4'b0011;cin=1'b0;
      #100 a=4'b0101;b=4'b1011;cin=1'b0;
      #100 a=4'b1101;b=4'b0011;cin=1'b1;
      #100 a=4'b0011;b=4'b0011;cin=1'b0;
      #100 a=4'b1001;b=4'b0011;cin=1'b1;
      #100 a=4'b0001;b=4'b1011;cin=1'b0;
      #100 a=4'b1111;b=4'b1101;cin=1'b1;
  
        
		// Add stimulus here

	end
      
endmodule

