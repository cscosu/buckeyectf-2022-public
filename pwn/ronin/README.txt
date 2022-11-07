# pwn / ronin
Pt 2/3 of stack overflow. The first buffer in the program has a ridiculous amount of extra space.
Since the stack is executable (per the Makefile) you can write shellcode here. Later, you can use a negative choice for direction to get a stack address leak from uninitialized memory.
The last buffer overflow goes just far enough to let you jump to your shellcode on the stack.

