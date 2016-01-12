`timescale 1ns/1ns

module Q1_myBarrelShifter #(parameter size = 16) (output [size-1:0]W, input [size-1:0]D, N);
	genvar i;
	generate for(i = 0; i < size; i = i + 1)
			assign W = N[i] ? D>>i : 'z;
	endgenerate
endmodule

