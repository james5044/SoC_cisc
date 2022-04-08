module tb_addr_mux;
	//Inputs
	reg [4:0] a;
	reg [4:0] b;
	reg sel;
	
	//Outputs
	wire [4:0] mux_out;
	
	//UUT
	addr_mux U2 (
		.a(a),
		.b(b),
		.sel(sel),
		.mux_out(mux_out)
	);
	
	
	initial begin 
		//Initialize 
		a = 0;
		b = 0;
		sel = 0;
	end
	
	
		//Simulation 
	initial begin 
		#3 a = 5'b00100;
		#3 a = 5'b00011;
		#3 a = 5'b00000;
		#3 a = 5'b11100;
		#3 a = 5'b00011;
		#3 a = 5'b00100;
		#3 a = 5'b00011;		
	end
	
	initial begin 
		#3 b = 5'b01010;
		#3 b = 5'b11001;
		#3 b = 5'b11011;
		#3 b = 5'b11001;
		#3 b = 5'b11111;
		#3 b = 5'b11000;
		#3 b = 5'b11111;		
	end
	
	always begin
		#5 sel = ~ sel;
	end	
	
endmodule 

