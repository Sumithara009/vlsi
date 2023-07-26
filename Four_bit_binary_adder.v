Program:

module binary4(
    input [3:0] a,b,
    input cin,
    output co,
    output [3:0] s
    );
wire c1,c2,c3;
fulladd fa0(a[0],b[0],cin,s[0],c1);
fulladd fa1(a[1],b[1],c1,s[1],c2);
fulladd fa2(a[2],b[2],c2,s[2],c3);
fulladd fa3(a[3],b[3],c3,s[3],co);
endmodule

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

