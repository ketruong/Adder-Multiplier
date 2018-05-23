module adder_2_bit(
	input[1:0] a, b,
	input c_in,
    output [1:0] s
	output c_out
);

// 2 bit ripple carry adder 

wire carry_0;

full_adder fa0(
    .a(a[0]),
    .b(b[0]),
    .c_in(c_in),
    .s(s[0]),
    .c_out(carry_0)
);

full_adder fa1(
    .a(a[1]),
    .b(b[1]),
    .c_in(carry_0),
    .s(s[1]),
    .c_out(c_out)
);

endmodule
