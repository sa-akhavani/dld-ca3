`timescale 1ns/1ns

module Q5_test();
	logic [31:0]QR;
	// logic [15:0]Q;
	// logic [15:0]R;
	logic [15:0]M = 1024 + 64 + 4 + 1;
	logic [3:0]N = 4;
	
	Q4 UUT (QR, M, N);
//  Q3_Div UUT2(Q, R, M, N)
	initial begin
  #800 	$stop;
	end  
endmodule
