module Project_2( 
	input[1:0] a, b,
	input c_in,
	output[1:0] s,
    output [6:0] l,
	output c_out
);

// sum of 2 bit adder 
wire [3:0] binary;

// 2 bit ripple carry adder 
adder_2_bit adder(
.a(a),
.b(b),
.c_in(c_in),
.s(s),
.c_out(c_out)
);

// assign to sum of adder
assign bin[0] = s[0];
assign bin[1] = s[1];
assign bin[2] = c_out;
assign bin[3] = 0;

// display sum on 7 segment display
sevenseg(
    .data(bin),
    .segments(l)
);


endmodule
