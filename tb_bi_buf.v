
module tb_bi_buf;
	//Inputs
	reg en;
	reg [7:0] buf_in;
	reg [7:0] d_in;
	
	//Outputs
	wire [7:0] buf_out;
	wire [7:0] d_out;
	
	//UUT
	bi_buf U1 (
		.en(en),
		.buf_in(buf_in),
		.d_in(d_in),
		.buf_out(buf_out),
		.d_out(d_out)
	);
	
	
	initial begin 
		//Initialize 
		en = 0;
		buf_in = 0;
		d_in = 0; 
			
		//Simulation 
	  #10 buf_in = 0110_1101;
	  #30 d_in = 1010_0101;
	  #10 en = 1 ;
	  #30 buf_in = 1111_1111; d_in = 0 ;
	      
	
	end
	
		
endmodule 
