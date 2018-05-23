module full_adder(
    input a,b,c_in,
    output s, c_out
);

// Adding two one-bit integers

wire net1,net2,net3;

// S = (A XOR B) XOR C_IN
xor (net1, a, b);
xor(s,net1, c_in);

// C_OUT = ((A XOR B) AND C_IN) OR (A AND B)
and(net2,net1,c_in);
and(net3,a,b);
or(c_out, net2 ,net3);

endmodule 
