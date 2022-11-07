import Crypto.Util.number as cun

while True:
    p = cun.getPrime(1024)
    q = p + 2
    if cun.isPrime(q):
        break

n = p * q
e = 0x10001

phi = (p - 1) * (q - 1)
d = pow(e, -1, phi)

FLAG = cun.bytes_to_long(b"buckeye{B3_TH3R3_OR_B3_SQU4R3__abcdefghijklmonpqrstuvwxyz__0123456789}")
c = pow(FLAG, e, n)
assert pow(c, d, n) == FLAG

print(f"n = {n}")
print(f"c = {c}")
