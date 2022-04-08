module tb_memory;
	//Inputs
	reg reset;
	reg clk;
	reg READ;
	reg WRITE;
	reg [4:0] MEM_ADDR;
	reg [7:0] MEM_DATA1;
	
	//Outputs
	wire [7:0] MEM_DATA2;
	
	//UUT
	memory U1 (
		.reset(reset),
		.clk(clk),
		.READ(READ),
		.WRITE(WRITE),
		.MEM_ADDR(MEM_ADDR),
		.MEM_DATA1(MEM_DATA1),
		.MEM_DATA2(MEM_DATA2)		
	);
	
	
	initial begin 
		//Initialize 
		reset = 1;
		clk = 0;
		READ = 0;
		WRITE = 0;
		MEM_ADDR = 0;
		MEM_DATA1 = 0;
		
		#2 reset = 0; READ = 1;
					
		//Simulation 
		#5 MEM_ADDR = 5'b00000;
		#5 MEM_ADDR = 5'b00001;
		#5 MEM_ADDR = 5'b00010;
		#5 MEM_ADDR = 5'b00100; READ = 0; WRITE = 1;
		#5 MEM_ADDR = 5'b11010;
		#5 MEM_ADDR = 5'b11011;
		#5 MEM_ADDR = 5'b11100;
		#5 MEM_ADDR = 5'b111010;
		#5 MEM_ADDR = 5'b11110; WRITE = 0;		
	end  
	
	always begin
		#1 clk = ~clk;
	end
		
endmodule 
