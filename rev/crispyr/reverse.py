import sys


sz = 256
aminos = bytearray(b'\x00' * sz)
history = ""
cursor = 0
odd = False
max_run_length = 4

def print_state():
    s = "[ "
    for a in aminos:
        s +=  '{:02x} '.format(a)
    s = s + ']'
    print(s)
    c = '  ' + '   ' * cursor + '^'
    print(c)

def exec(x):
    global cursor
    global history
    global aminos

    if x == 'g':
        if cursor == sz - 1:
            cursor = 0
        else:
            cursor = cursor + 1
        history = history + x
    elif x == 'c':
        aminos[cursor] = aminos[cursor] ^ 0xff
        history = history + x
    elif x == 't':
        if aminos[cursor] == 0xff:
            aminos[cursor] = 0
        else:
            aminos[cursor] = aminos[cursor] + 1
        history = history + x
    elif x == 'a':
        cursor = aminos[cursor] % sz
        history = history + x
    else:
        print(f"Unrecognized op {x}")
        sys.exit(1)
    #print(x)
    #print_state()


def zflip():
    exec('c')
    exec('c')

def move_to(pos):
    global odd

    #print(f"Moving to {pos} from {cursor}")
    if cursor > pos:
        dist = sz - (cursor - pos)
    else:
        dist = pos - cursor

    while dist > 1:
        exec('g')
        exec('g')
        zflip()
        dist = dist - 2

    if dist > 0:
        exec('g')
        odd = not odd
        if not odd:
            zflip()

def bump(amt):
    #print(f"bumping by {amt}")
    for i in range(0,amt):
        exec('t')
    for j in range(0, amt):
        exec('a')

def set(c):
    #print(f"Setting to {chr(c)}")
    pos = cursor
    while aminos[cursor] != c:
        diff = c - aminos[cursor]
        if diff > max_run_length:
            diff = max_run_length
        bump(diff)
        if cursor != pos:
            move_to(pos)

def solve(goal):
    for i in range(0, len(goal)):
        move_to(i)
        #print(f"Moved to {i}")
        set(ord(goal[i]))
        #print(f"Set {goal[i]}")
    if odd:
        move_to((cursor + 1) % sz)
    return history

