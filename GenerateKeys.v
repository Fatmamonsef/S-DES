module GenerateKeys(
		input[0:9] Key,
		output reg [0:7] Key1, Key2
		);
		
		reg[0:9] p10_out, tempA, tempC;
		
		always@(*)

		begin
			// P10 Permutations
			p10_out = {Key[2], Key[4], Key[1], Key[6], Key[3], Key[9], Key[0], Key[8], Key[7], Key[5]};
		
			// Left Rotation by 1 bit
			tempA = {p10_out[1:4], p10_out[0], p10_out[6:9], p10_out[5]};
		
			// P8 Permutations
			Key1  = {tempA[5], tempA[2], tempA[6], tempA[3], tempA[7], tempA[4], tempA[9], tempA[8]};
		
			// Left Rotation by 2 bits
			tempC = {p10_out[3:4], p10_out[0:2], p10_out[8:9], p10_out[5:7]};
		
			// P8 Permutations
			Key2 = {tempC[5], tempC[2], tempC[6], tempC[3], tempC[7], tempC[4], tempC[9], tempC[8]};
		end
		
	endmodule