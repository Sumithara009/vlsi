module halfadd(
    input a,b,
    output s,co
    );
assign s=a^b;
assign co=a&b;

endmodule

Testbench:
module halfaddtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	halfadd uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b0;
      #100;a=1'b0;b=1'b1;
		#100;a=1'b1;b=1'b0;
		#100;a=1'b1;b=1'b1;
		// Add stimulus here

	end
      
endmodule


