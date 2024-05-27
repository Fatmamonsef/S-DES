module IP(

	input [0:7] plaintext,
	output [0:7] IP_out);
	
	
	assign IP_out = {plaintext[1], plaintext[5], plaintext[2], plaintext[0], plaintext[3], plaintext[7], plaintext[4], plaintext[6]};


endmodule