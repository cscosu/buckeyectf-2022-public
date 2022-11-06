import sys

with open(sys.argv[1], "rb") as fi:
	dat = fi.read()

bytes_out = b''
for c in dat:
	bytes_out += (c ^ 0x58).to_bytes(1, 'big')

with open(sys.argv[2], "wb") as fo:
	fo.write(bytes_out)
