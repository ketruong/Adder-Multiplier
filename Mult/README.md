# 2-bit Multiplier 

A 2-bit multiplier was implemented using schoolbook multiplication. 
    
                  a       b 
              x   c       d
          __________________________
               (a & d) (b & d)
    +   (c & a)(c & b)
    ________________________________


Three sums needed to be calculated `(b & d)`, `(a & d) + (c & b) + carry`, and 
`(c & a) + carry`.
