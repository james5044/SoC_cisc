module tb_flag;
	//Inputs
	reg ld;
	reg clk;
	reg reset;
	reg [7:0] alu_out;
	
	//Outputs
	wire flag;
	
	//UUT
	flag U1 (
		.ld(ld),
		.clk(clk),
		.alu_out(alu_out),
		.reset(reset),
		.flag(flag)
	);
	
	
	initial begin 
		//Initialize 
		clk = 0;
		ld = 0;
		alu_out = 0; 
		reset = 1;
		
		#5 reset = 0;
			
		//Simulation 
		#10 alu_out = 8'b0000_1101;
		#10 alu_out = 8'b0000_0000;
		#10 alu_out = 8'b1000_0011;
		#10 alu_out = 8'b1100_0100;
		#10 alu_out = 8'b0000_0000;
		#10 alu_out = 8'b1001_0000;
		#10 alu_out = 8'b1100_1101;
			  
	end
	
	always begin
		#2 clk = ~clk;
	end
	
	always begin
		#15 ld = ~ld;
	end
	
	
endmodule 
	