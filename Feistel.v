module Feistel(
	input[0:7] inp_block, key,
	output reg[0:7] out_block );
	
	reg[0:3] first_chunk, second_chunk, xor_fout, xor_f1, xor_f2, p4_in, p4_out;
	reg[0:7] EP_out, xor_out;
	wire[0:1] s0_out, s1_out;
	
	
	S0_Box U1(xor_f1, s0_out);
	S1_Box U2(xor_f2, s1_out);
	
	always@(*)
		begin
			first_chunk  = inp_block[0:3];
			second_chunk = inp_block[4:7];
			
			EP_out = {second_chunk[3], second_chunk[0], second_chunk[1], second_chunk[2], second_chunk[1], second_chunk[2], second_chunk[3], second_chunk[0]};
			
			xor_out = EP_out ^ key;
		
			xor_f1 = xor_out[0:3];
			xor_f2 = xor_out[4:7];
			
			
			
			p4_in = {s0_out, s1_out};

			p4_out = {p4_in[1],p4_in[3],p4_in[2],p4_in[0]};
				
			xor_fout = p4_out ^ first_chunk;
			
			out_block = {xor_fout, second_chunk};
		end
		
	
	endmodule