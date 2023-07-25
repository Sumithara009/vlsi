module fullsub(
    input a,b,c,
    output d,bo
    );
wire x[5:0];	 
xor x1(x[0],a,b);
not n1(x[1],a);
and a1(x[2],x[1],b);
xor x2(x[3],x[0],c);
not n2(x[4],x[0]);
and a2(x[5],x[4],c);
or o1(bo,x[5],x[2]);
endmodule

Testbench:

module fullsubtest;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	fullsub uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.bo(bo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		a=1'b0;b=1'b0;c=1'b0;
		#100 a=1'b0;b=1'b0;c=1'b1;
		#100 a=1'b0;b=1'b1;c=1'b0;
		#100 a=1'b0;b=1'b1;c=1'b1;
		#100 a=1'b1;b=1'b0;c=1'b0;
		#100 a=1'b1;b=1'b0;c=1'b1;
		#100 a=1'b1;b=1'b1;c=1'b0;
		#100 a=1'b1;b=1'b1;c=1'b1;
	
	end
      
endmodule

