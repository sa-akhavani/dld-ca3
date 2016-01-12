`timescale 1ns/1ns

module Q4(output [31:0]W, input [15:0]I, input [3:0]N);
	wire [15:0]Q, R;
	Q3_Div qr(Q, R, I, N);
	
	wire [15:0]fraction;
	assign fraction = R << 16-N;
	assign W = {Q, fraction};
endmodule

