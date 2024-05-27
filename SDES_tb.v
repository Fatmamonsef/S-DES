`timescale 1ns / 1ps

module SDES_tb;

	reg[0:9] key;
	reg[0:7] plaintext;
	reg enc;
	wire[0:7] ciphertext;

	// Monitoring && Debugging
	initial
		$monitor("\n\nPlaintext = %b\nKey = %b\n\nCiphertext = %b\n\n",plaintext, key, ciphertext);

	initial
	begin
		enc = 1'b1;
		key = 10'b1010000010;
		plaintext = 8'b01110010;
		
		#10
		//enc = 1'b0;
		//plaintext = 8'b1010000010;
		#10
		$stop;
	end
	
	SDES		inst0	(.key(key), .plaintext(plaintext), .ciphertext(ciphertext));

endmodule
