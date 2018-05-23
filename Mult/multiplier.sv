module multiplier{
    input[1:0] a, b,
    input c_in,
    output[2:0] s,
    output c_out
}

// multiplication using schoolbook multiplication 

/*
    
                  a       b 
              x   c       d
          __________________________
               (a & d) (b & d)
    +   (c & a)(c & b)
    ________________________________
*/

// Need four wires to reprsent a & c, a & d, b & c, and b & d

logic a0b0, a0b1, a1b0, a1b0;

assign a0b0 = a[0] & b[0];
assign a0b1 = a[0] & b[1];
assign a1b0 = a[1] & b[0];
assign a1b1 = a[1] & b[1];

// carry wires 
wire carry_0;
wire carry_1;

// need three full adders to calculate the three sums 

full_adder fa0(
    .a(a0b0),
    .b(0),
    .c_in(c_in),
    .s(s[0]),
    .c_out(carry_0)
);

full_adder fa1(
    .a(a0b1),
    .b(a1b0),
    .c_in(carry_0),
    .s(s[1]),
    .c_out(carry_1)
);

full_adder fa2(
    .a(0),
    .b(a1b1),
    .c_in(carry_1),
    .s(s[2]),
    .c_out(c_out)
);

endmodule
