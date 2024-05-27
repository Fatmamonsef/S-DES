module swap(
	input [0:7] in,
	output [0:7] out);
	
	
	
	assign out = {in[4:7], in[0:3]};


endmodule