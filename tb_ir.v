module tb_ir;
	//Inputs
	reg reset;
	reg clk;
	reg ld;
	reg [7:0] ir_in;
		
	//Outputs
	wire [7:0] ir_out;
	
	//UUT
	ir U1 (
		.reset(reset),
		.clk(clk),
		.ld(ld),
		.ir_in(ir_in),
		.ir_out(ir_out)
	);
	
	
	initial begin 
		//Initialize 
		reset = 1;
		clk = 0;
		ld = 0;
		ir_in = 0 ;
		
		#5 reset = 0;
					
		//Simulation 
		#5 ir_in = 0110_1101;
		#5 ir_in = 1010_0101;
		#5 ir_in = 1001_0101;
		#5 ir_in = 0000_0000;
		#5 ir_in = 0101_0011;
	end  
	
	always begin
		#1 clk = ~clk;
	end
	
	always begin
		#6 ld = ~ld;
	end
	
		
endmodule 
