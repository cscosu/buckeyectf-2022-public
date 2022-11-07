# pwn / shogun
Final stack overflow challenge. This one was ret2libc.
You get PLENTY of overflow, but with a catch; there's no call to puts or printf, so if you want a leak, you need to use the scroll function.
The problem is the use of usleep adds some pretty heavy constraints to stack alignment, so you need to carefully choose your reentry points to successfully get the leak, then perform a second ROP to libc.

