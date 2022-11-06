#!/usr/bin/env python3
badpatterns = [
    # '62 f5 44 48 58 c0'
    b'\x62\xf5\x48\x58',
    #'62 f5 7c 08 2f c0'
    b'\x62\xf5\x08\x2f',
    #'62 f6 7d 48 9a ff'
    b'\x62\xf6\x48\x9a',
    #'62 f5 7c 48 5a d8'
    b'\x62\xf5\x48\x5a',
    #'62 f5 7c 48 51 ea'
    b'\x62\xf5\x48\x51',
]
#'00 00 80 00 74 05'
cpuid_pattern = b'\x00\x00\x80\x00\x74\x05'
def filter(filebytes):
    if len(filebytes) < 6:
        return filebytes
    buf = bytearray()
    i = 0
    l = len(filebytes) - 6
    while i < l:
        data = filebytes[i:i+2] + filebytes[i+3:i+5]
        if data in badpatterns or filebytes[i:i+6] == cpuid_pattern:
            for j in range(6):
                buf.append(0x90)
            i += 6
        elif filebytes[i] in {0x9d, 0x9c}:
            buf.append(0x90)
            i += 1
        elif filebytes[i] == 0x66 and filebytes[6:8] == b"\x00\x01":
            for _ in range(10):
                buf.append(0x90)
            i += 10
        else:
            buf.append(filebytes[i])
            i += 1
        if len(buf) != i:
            print(len(buf), i)

    return bytes(buf) + filebytes[-6:]

if __name__ == '__main__':
    with open('a.out', 'rb') as rfp:
        elfbytes = rfp.read()
    with open('filter.elf', 'wb') as wfp:
        wfp.write(filter(elfbytes))
  
