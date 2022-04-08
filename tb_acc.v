module tb_acc;
	//Inputs
	reg ld;
	reg reset;
	reg clk;
	reg [7:0] acc_in;
	
	//Outputs
	wire [7:0] acc_out;
	
	//UUT
	acc U1 (
		.ld(ld),
		.reset(reset),
		.clk(clk),
		.acc_in(acc_in),
		.acc_out(acc_out)
	);
	
	
	initial begin 
		//Initialize 
		ld = 0;
		reset = 1;
		acc_in = 0;
		clk = 0;
		#1 reset = 0;
	
	
		//Simulation 
		#3 acc_in = 0001_1010;
		#3 acc_in = 0010_0010;
		#3 acc_in = 0100_0010;
		#3 acc_in = 1000_0010;
		#3 acc_in = 1000_0100;
		#3 acc_in = 1010_0110;
		#3 acc_in = 1000_0011;
	end
	
	always begin
		#1 clk = ~clk;
	end
	
	always begin
		#4 ld = 1;
		#1 ld = 0;
	end
	
endmodule 