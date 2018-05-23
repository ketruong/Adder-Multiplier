module adder_4_bit(
	input[3:0] a, b,
	input c_in,
	output [3:0] s,
	output c_out
);

wire carry_0;
wire carry_1;
wire carry_2;

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
.c_out(carry_1)

);

full_adder fa2{

.a(a[2]),
.b(b[2]),
.c_in(carry_1),
.s(s[2]),
.c_out(carry_2)

);

full_adder fa3(
.a(a[3]),
.b(b[3]),
.c_in(carry_2),
.s(s[3]),
.c_out(c_out)

);
endmodule
