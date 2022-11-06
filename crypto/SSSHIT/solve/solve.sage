import os

os.environ["PWNLIB_NOTERM"] = "True"

import pwn
import Crypto.Util.number as cun
import ast

MESSAGE = cun.bytes_to_long(b"qxxxb, BuckeyeCTF admins, and NOT YOU")
N_SHARES = 3


def connect():
    if pwn.args.REMOTE:
        io = pwn.remote("localhost", 1024)
    else:
        io = pwn.process("python3 ../deploy/chall.py", shell=True)

    points = []

    io.recvuntil(b"Your share is:\n")
    points.append(ast.literal_eval(io.recvlineS()))
    io.recvuntil(b"The other shares are:\n")
    points.append(ast.literal_eval(io.recvlineS()))
    points.append(ast.literal_eval(io.recvlineS()))

    return io, points


while True:
    io, points = connect()

    R.<x> = PolynomialRing(QQ)
    f = R.lagrange_polynomial(points)
    p_multiple = f(0) - MESSAGE

    if p_multiple != 0 and int(p_multiple) == p_multiple:
        break


p_multiple = int(p_multiple)
if p_multiple < 0:
    p_multiple *= -1

for i in range(2, 128):
    if p_multiple % i == 0:
        p_multiple = p_multiple // i

    if is_prime(p_multiple):
        break
else:
    print("[-] I'm die")

p = p_multiple
print(f"[+] p = {p}")

K.<x> = PolynomialRing(GF(p))

xs = [K(point[0]) for point in points]
ys = [K(point[1]) for point in points]
ys[0] = x

y_intercept = 0
for j in range(N_SHARES):
    product = 1
    for i in range(N_SHARES):
        if i != j:
            product *= (xs[i] * (xs[i] - xs[j]) ** (-1))
    y_intercept += ys[j] * product

desired_message = cun.bytes_to_long(b"qxxxb, BuckeyeCTF admins, and ME")
evil_y0 = (y_intercept - desired_message).roots()[0][0]

io.sendlineafter(">>> ", str((1, evil_y0)))
io.interactive()
