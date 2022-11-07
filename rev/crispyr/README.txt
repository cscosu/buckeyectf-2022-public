# rev / crispyr
Rust rev! Yay!
The binary is an extremely simple interpreter for 'genetic code' made up of a string of Gs, Cs, As, and Ts.
The interpreter's memory is just a large string of one-byte cells. Each letter performs on operation on the string.
However, there are a couple constraints in the interpreter: first, the number of As needs to equal the number of Ts and the number of Gs needs to equal the number of Cs. Secondly, you can't repeat the same character more than 4 times. The goal of the program is to submit a sequence that generates the string the server asks for.

