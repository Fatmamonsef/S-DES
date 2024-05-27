/*
	Simplified Data Encryption Standard (S-DES)
	8-bit 2-round block cipher encryption and decryption algorithm using 10-bit key.
*/


module SDES(input[0:9] key, input[0:7] plaintext, input encrypt, output[0:7] ciphertext);
	wire[0:7] IP_out, sw_out, iip_out, temp1,temp2;
	wire[0:7] Key1, Key2 ,feistel_out1,feistel_out2;
	
	assign ciphertext = iip_out;
	
	// Generate Key1 and Key2
	GenerateKeys U_GenerateKeys(key, Key1, Key2);
	
	IP U_IP(plaintext,IP_out);

	Feistel U1_Feistel (IP_out, Key1, feistel_out1);
	
	swap U_Swap(feistel_out1,sw_out);
	
	Feistel U2_Feistel (sw_out, Key2, feistel_out2);

	IP_Inv U_IP_Inv(feistel_out2,iip_out);
	
	
endmodule
