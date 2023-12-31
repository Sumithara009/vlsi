//20L152-SUMITHA R A
module seq_det_1011_test;

	// Inputs
	reg clk;
	reg rst;
	reg sequence;

	// Outputs
	wire tick;

	// Instantiate the Unit Under Test (UUT)
	seq_det_1011 uut (
		.clk(clk), 
		.rst(rst), 
		.sequence(sequence), 
		.tick(tick)
	);
   always#100 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		sequence = 0;

		// Wait 100 ns for global reset to finish
		   /*#100 rst=1'b0;sequence=1'b0;
			#100 rst=1'b0;sequence=1'b1;
			#100 rst=1'b1;sequence=1'b0;
			#100 rst=1'b1;sequence=1'b1;*/
		 #30;rst = 0;
       #40;sequence = 1;
       #10;sequence= 0;
       #10;sequence= 1; 
       #20;sequence = 0; 
       #20;sequence = 1; 
       #20;sequence = 0; 
        
		// Add stimulus here

	end
      
endmodule

