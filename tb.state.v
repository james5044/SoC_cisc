module tb_state;
	//Inputs
	reg reset;
	reg clk;
	reg [2:0] state_in;
		
	//Outputs
	wire [2:0] state_out;
	
	//UUT
	state U1 (
		.reset(reset),
		.clk(clk),
		.state_in(state_in),
		.state_out(state_out)
	);
	
	
	initial begin 
		//Initialize 
		reset = 1;
		clk = 0;
		state_in = 0 ;
		
		#2 reset = 0;
					
		//Simulation 
		#5 state_in = 000;
		#5 state_in = 001;
		#5 state_in = 101; reset = 1;
		#5 reset = 0;
		#5 state_in = 110;
		#5 state_in = 010;
		#5 state_in = 110;
	end  
	
	always begin
		#1 clk = ~clk;
	end
	
			
endmodule 
