module Project_2( 
	input[1:0] a, b,
	input c_in,
	output [2:0] s,
	output c_out
);

multiplier(
.a(a),
.b(b),
.c_in(c_in),
.s(s),
.c_out(c_out)

);

endmodule
