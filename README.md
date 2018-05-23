# Adder-Multiplier 
A 2-bit Multiplier, a seven segement display, and a 4-bit adder were implemented in
System Verilog.

## 2-bit Multiplier 

A 2-bit multiplier was implemented using schoolbook multiplication. 
    
                       a       b 
                x      c       d
              __________________________
                    (a & d) (b & d)
        +   (c & a) (c & b)
        ________________________________


Three sums needed to be calculated `(b & d)`, `(a & d) + (c & b) + carry`, and 
`(c & a) + carry`.

## 2-bit Adder to Seven Segment Display

This is an implementation of a 2-bit ripple carry adder in System Verilog. 
Two full adders were used to make the 2-bit ripple carry adder.

<p align="center">
<img src = "https://www.cs.hmc.edu/csforall/_images/adder.PNG"/>
</p>

The sum is displayed on a BCD-to-seven-segment decoder.  

<p align="center">
<img src = "seven-segment-display/images/7seg.png"/>
</p>

## 4-bit Adder 

This is an implementation of a four bit ripple carry adder in System Verilog. Four full adders
were used to make the four bit ripple carry adder.

<p align="center">
<img src = "https://www.nandland.com/vhdl/modules/images/ripple-carry-adder-4-bit.png" />
</p>


