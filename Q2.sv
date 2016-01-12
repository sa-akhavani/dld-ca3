`timescale 1ns/1ns
module Q2_IBDecoder #(parameter size = 4) (output [(2**size)-1:0]W, input [size-1:0]D);
	wire [(2**size)-1:0]One = (2**(2**size))-1;
	
	generate for(genvar i = 0; i < 2**size; i = i + 1)
		assign W = (D == i) ? One >> ((2**size)-1 - i) : 'z;
	endgenerate
endmodule
 
