import codecs
import itertools

def bxor(b1, b2): # use xor for bytes
    result = b""
    for b1, b2 in zip(b1, itertools.cycle(b2)):
        result += bytes([b1 ^ b2])
    return result

final = codecs.decode('111c0d0e150a0c151743053607502f1e10311544465c5f551e0e', 'hex_codec')
solve = bxor(final, b"sinep")
print(solve)
