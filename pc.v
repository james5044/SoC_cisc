module pc(
	input ld_pc,
	input inc_pc,
	input reset,
	input clk,
	input [4:0] pc_in,
	output reg [4:0] pc_out
	);

always@(posedge reset or posedge clk) begin
 if(reset)
	pc_out <= 5'b0;
 else
	if(ld_pc)
		pc_out <= pc_in;
	else if(inc_pc)
		pc_out <= pc_out+1;
end

endmodule

module tb_pc;
	//Inputs
	reg ld_pc;
	reg inc_pc;
	reg reset;
	reg clk;
	reg [4:0] pc_in;
		
	//Outputs
	wire [4:0] pc_out;
	
	//UUT
	pc U1 (
		.ld_pc(ld_pc),
		.inc_pc(inc_pc),
		.reset(reset),
		.clk(clk),
		.pc_in(pc_in),
		.pc_out(pc_out)
	);
	
	
	initial begin 
		//Initialize 
		reset = 1;
		clk = 0;
		ld_pc = 0;
	   inc_pc = 0;
	   pc_in = 0;
		
		
		#2 reset = 0;
					
		//Simulation 
		#30 pc_in = 10010; ld_pc = 1;
		#10 ld_pc = 0;
		#20 pc_in = 11101;
		#10 ld_pc = 1; 
		#10 ld_pc = 0;
		#20 inc_pc = 1; 
		#10 inc_pc = 0; 		
	end  
	
	always begin
		#5 clk = ~clk;
	end
	
			
endmodule 
