module tb_control;
	//Inputs
	reg zero;
	reg [2:0] op;
	reg [2:0] pstate;
	
	//Outputs
	wire ld_acc;
	wire ld_mdr;
	wire ld_ir;
	wire dout_en;
	wire ld_pc;
	wire inc;
	wire sel;
	wire rd;
	wire wr;
	wire [2:0] nstate; 
	
	//UUT
	control U1 (
		.zero(zero),
		.op(op),
		.pstate(pstate),
		.ld_acc(ld_acc),
		.ld_mdr(ld_mdr),
		.ld_ir(ld_ir),
		.dout_en(dout_en),
		.ld_pc(ld_pc),
		.inc(inc),
		.sel(sel),
		.rd(rd),
		.wr(wr),
		.nstate(nstate)		
	);
	
	
	initial begin 
		//Initialize 
		zero =1;
	   op = 0;
	   pstate = 0;
		
		#5 zero = 0;
	end
	
	always begin 	
					
		//Simulation 
		#5 op = 000;
		#5 op = 010;
		#5 op = 110;
		#5 op = 111;
		#5 op = 010;
		#5 op = 101;
		#5 op = 000;
	end
	
	always begin 
		#4 pstate = 000;
		#4 pstate = 010;
		#4 pstate = 101;
		#4 pstate = 110;
		#4 pstate = 010;
		#4 pstate = 110;
		#4 pstate = 010;
		#4 pstate = 001;		
	end  
	
			
endmodule 