module IP_Inv(
	input [0:7] feistel_out2,
	output [0:7] iip_out

);

	assign iip_out = {feistel_out2[3], feistel_out2[0], feistel_out2[2], feistel_out2[4], feistel_out2[6], feistel_out2[1], feistel_out2[7], feistel_out2[5]};

endmodule