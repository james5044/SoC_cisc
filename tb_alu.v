module tb_alu;
	//Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [2:0] op;
	
	//Outputs
	wire [7:0] alu_out;
	
	//UUT
	alu U1 (
		.a(a),
		.b(b),
		.op(op),
		.alu_out(alu_out)
	);
	
	
	initial begin 
		//Initialize 
		a = 0;
		b = 0;
		op = 0; 
			
		//Simulation 
	  #10 a = 0110_1101;
	  #30 b = 1010_0101;
	  #10 op = 3'b011 ;
	  #30 b = 1111_1111; op = 3'b101 ;
	      
	
	end
	
		
endmodule 