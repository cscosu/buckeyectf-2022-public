from getch import getch, getche

sz = 30
aminos = bytearray(b'\x00' * sz)
history = ""
cursor = 0

max_run_length = 4

def print_state():
    s = "[ "
    for a in aminos:
        s +=  '{:02x} '.format(a)
    s = s + ']'
    print(s)
    c = '  ' + '   ' * cursor + '^'
    print(c)

while True:
    print_state()
    x = getch()
    print(x)
    # run length constraint
    if len(history) >= max_run_length and history[-max_run_length:] == x * max_run_length:
        print("Not allowed")
    elif x == 'g':
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
        cursor = aminos[cursor] % 30
        history = history + x
    elif x == 'x':
        break
    else:
        print(f"Unrecognized op {x}")

print(f"Writing")
with open("out.gcat", "w") as fo:
    fo.write(history)

