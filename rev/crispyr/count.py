import sys

with open(sys.argv[1], 'r') as fi:
    dat = fi.read()

g = 0
c = 0
a = 0
t = 0

for i in dat:
    if i == 'g':
        g += 1
    elif i == 'c':
        c += 1
    elif i == 'a':
        a += 1
    elif i == 't':
        t += 1

print(f"G: {g}\nC: {c}\nA: {a}\nT: {t}")
