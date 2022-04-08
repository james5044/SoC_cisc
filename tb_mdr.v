
module tb_mdr;
	//Inputs
	reg reset;
	reg clk;
	reg ld;
	reg [7:0] mdr_in;
		
	//Outputs
	wire [7:0] mdr_out;
	
	//UUT
	mdr U1 (
		.reset(reset),
		.clk(clk),
		.ld(ld),
		.mdr_in(mdr_in),
		.mdr_out(mdr_out)
	);
	
	
	initial begin 
		//Initialize 
		reset = 1;
		clk = 0;
		ld = 0;
		mdr_in = 0 ;
		
		#2 reset = 0;
					
		//Simulation 
		#5 mdr_in = 0000_0010;
		#5 mdr_in = 1101_0110;
		#5 mdr_in = 0010_0001;
		#5 mdr_in = 0101_0101;
		#5 mdr_in = 0000_0000;
		#5 mdr_in = 1101_0110;
		#5 mdr_in = 0000_0010;
		#5 mdr_in = 1101_0110;
	end  
	
	always begin
		#1 clk = ~clk;
	end
	
	always begin
		#6 ld = ~ld;
	end
	
		
endmodule 
