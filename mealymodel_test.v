//20L152-SUMITHA R A
module mealytest;

	// Inputs
	reg x;
	reg rst;
	reg clk;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mealy uut (
		.x(x), 
		.rst(rst), 
		.clk(clk), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
   		#100 rst=1'b0;clk=1'b0;x=1'b0;
      #100 rst=1'b1;clk=1'b1;x=1'b0;
      #100 rst=1'b0;clk=1'b1;x=1'b1;   	
      #100 rst=1'b0;clk=1'b1;x=1'b0;  
      #100 rst=1'b1;clk=1'b1;x=1'b1;  		
		// Add stimulus here

	end
      
endmodule

