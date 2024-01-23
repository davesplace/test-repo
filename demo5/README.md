# More Variables

This demo gives an example of using integer variable in a for loop to incrementally read the values of two different registers

One register is little endian [3:0] and the other is big endian [0:3].  You can observe the values being printed as the index goes from LSB to MSB

Additionally, It is demonstrated that neither the verilog compiler or synthesizer will give you any error if you go beyond the limits of the registers.  (it will let you attempt to access an index of a register that doesn't exist, ie accesing bit 8 of a 4-bit register)

