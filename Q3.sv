`timescale 1ns/1ns

module Q3_Decoder (output [15:0]w, input [3:0]d);
	assign w = 1 << d;
endmodule

module Q3_Div(output [15:0]Q, R, input [15:0]M, input [3:0]N);
	wire[15:0]decoderOut;
	Q3_Decoder uu(decoderOut, N);
	
	// This is Q
	Q1_myBarrelShifter barrel1(Q, M, decoderOut);
	
	wire [15:0]ibdOut;
	Q2_IBDecoder ibd1(ibdOut, N);
	
	generate for (genvar i = 1; i < 16; i = i+1)
		assign R[i-1] = M[i-1] & ibdOut[i];
	endgenerate
	assign R[15] = 0;
endmodule

