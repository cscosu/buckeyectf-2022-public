#!/usr/bin/env python3

from pwn import *
from reverse import solve

exe = ELF("./crispyr/target/release/crispyr")

context.binary = exe


def conn():
    if args.LOCAL:
        r = process([exe.path])
        if args.DEBUG:
            gdb.attach(r)
    else:
        r = remote("addr", 1337)

    return r


def main():
    r = conn()

    r.recvuntil(b'trait:')
    trait = r.recvline()[2:-2]
    trait = trait.decode()
    print(f"Goal: {trait}, length {len(trait)}")
    strand = solve(trait).encode()
    r.sendline(strand)
    r.interactive()


if __name__ == "__main__":
    main()
