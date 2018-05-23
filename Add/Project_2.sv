module Project_2( 
	input[3:0] a, b,
	input c_in,
	output [3:0] s,
	output c_out
);

adder_4_bit adder(
.a(a),
.b(b),
.c_in(c_in),
.s(s),
.c_out(c_out)

);

endmodule
