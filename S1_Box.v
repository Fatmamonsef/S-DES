module S1_Box(
	input[0:3] inp_bits,
	output reg[0:1] out_bits);
	
	always@(*)
	begin
			case(inp_bits)
				4'b0000: out_bits = 2'b00;
				4'b0001: out_bits = 2'b10;
				4'b0010: out_bits = 2'b01;
				4'b0011: out_bits = 2'b00;
				4'b0100: out_bits = 2'b10;
				4'b0101: out_bits = 2'b01;
				4'b0110: out_bits = 2'b11;
				4'b0111: out_bits = 2'b11;
				4'b1000: out_bits = 2'b11;
				4'b1001: out_bits = 2'b10;
				4'b1010: out_bits = 2'b00;
				4'b1011: out_bits = 2'b01;
				4'b1100: out_bits = 2'b01;
				4'b1101: out_bits = 2'b00;
				4'b1110: out_bits = 2'b00;
				4'b1111: out_bits = 2'b11;
			endcase
		end
	
endmodule