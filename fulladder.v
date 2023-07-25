module fulladd(
    input a,b,cin,
    output s,co
    );
wire x[2:0];
xor g1(x[0],a,b);
and g2(x[1],a,b);
xor g3(s,x[0],x[1]);
and g4(x[2],x[0],x[1]);
or g5(co,x[2],x[1]);
endmodule

Test bench:
module fulladdtest;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	fulladd uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b0;cin=1'b0;
		#100;a=1'b0;b=1'b0;cin=1'b1;
		#100;a=1'b0;b=1'b1;cin=1'b0;
		#100;a=1'b0;b=1'b1;cin=1'b1;
		#100;a=1'b1;b=1'b0;cin=1'b0;
		#100;a=1'b1;b=1'b0;cin=1'b1;
		#100;a=1'b1;b=1'b1;cin=1'b0;
		#100;a=1'b1;b=1'b1;cin=1'b1;
        
		// Add stimulus here

	end
      
endmodule

