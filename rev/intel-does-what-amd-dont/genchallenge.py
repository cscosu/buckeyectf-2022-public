#!/usr/bin/env python3
import sys
import random
import time
import os

U32_MASK = 0xffffffff
ENTRY_NAME = 'challenge_main'

def fprint(obj, fp, end='\n'):
    print(obj, file=fp, end=end)
def gen_c_program(flag, fp):
    flagbytes = flag.encode()
    flagbytes = flagbytes + bytes(-len(flagbytes) & 3)
    flagints = [int.from_bytes(flagbytes[i:i+4], "little") for i in range(0, len(flagbytes), 4)]
    print([hex(x) for x in flagints])
    lines = []
    for rounds in range(16):
        for idx,i in enumerate(flagints):
            r = random.randint(0, 3)
            v = int.from_bytes(os.urandom(4), "big")
            currvar = f'flagints[{idx}]'
            if r == 0:
                # ROR
                v &= 0x1f
                if v == 0:
                    continue
                # print(f"before: {hex(flagints[idx])}")
                flagints[idx] = (i >> (32 - v) | i << v) & U32_MASK
                # print(f"after0: {hex(flagints[idx])}")
                lines.append(f'{currvar} = {currvar} >> {32 - v} | {currvar} << {v};')
            elif r == 1:
                # XOR
                if v == 0:
                    continue
                # print(f"before: {hex(flagints[idx])}")
                flagints[idx] = (i ^ v) & U32_MASK
                # print(f"after1: {hex(flagints[idx])}")
                lines.append(f'{currvar} ^= {v};')
            elif r == 2:
                if v == 0:
                    continue
                # print(f"before: {hex(flagints[idx])}")
                flagints[idx] = (i + v) & U32_MASK
                # print(f"after2: {hex(flagints[idx])}")
                lines.append(f'{currvar} += {v};')
            elif r == 3:
                # BSWAP 
                # print(f"before: {hex(flagints[idx])}")
                flagints[idx] = (i & 0xff000000) >> 24 | (i & 0xff0000) >> 8 | (i & 0xff00) << 8 | (i & 0xff) << 24
                # print(f"after3: {hex(flagints[idx])}")
                lines.append(f'{currvar} = ({currvar} & 0xff000000) >> 24 | ({currvar} & 0xff0000) >> 8 | ({currvar} & 0xff00) << 8 | ({currvar} & 0xff) << 24;')
    indent = '  '
    fprint('#include <stdio.h>', fp)
    fprint('int check;', fp)
    fprint('int ' + ENTRY_NAME + '() {', fp)
    fprint(indent + f'unsigned int flagints[{len(flagints) + 1}];', fp)
    fprint(indent + f'const unsigned int obfus[{len(flagints)}] = ' + '{', fp)
    for i in flagints:
        fprint(indent * 2 + hex(i) + ',', fp)
    fprint(indent + '};', fp)
    fprint(indent + f'for(int i = 0; i < {len(flagints)}; i++) flagints[i] = 0;', fp)
    fprint(indent + 'printf("What\'s the password? ");', fp)
    fprint(indent + f'scanf("%{len(flagints) * 4}s", (char *)flagints);', fp)
    for l in lines:
        fprint(indent + l, fp)
    fprint(indent + f'for(int i = 0; i < {len(flagints)}; i++)', fp)
    fprint(indent * 2 + 'if(flagints[i] != obfus[i]) { printf("Wrong!!!! Do better ;)\\n"); return 1; }', fp)
    fprint(indent + f'printf("Correct! Nice job!\\n");', fp)
    fprint(indent + 'return 0;', fp)
    fprint('}', fp)
    print([hex(x) for x in flagints])

lname = 0
def gen_avx512_fp16_insns(ninstructions, fp):
    global lname
    fprint(f'pushf', fp)
    fprint(f'cmpw $1, check(%rip)', fp)
    fprint(f'jz skip{lname}', fp)
    for i in range(ninstructions):
        r = random.randint(0, 4)
        s1, s2, dst = random.randint(0,7), random.randint(0,7), random.randint(0,7)
        if r == 0:
            fprint(f'vcomish %xmm{s1}, %xmm{dst}', fp)
        elif r == 1:
            fprint(f'vcvtph2pd %xmm{s1}, %zmm{dst}', fp)
        elif r == 2:
            fprint(f'vaddph %zmm{s1}, %zmm{s2}, %zmm{dst}', fp)
        elif r == 3:
            fprint(f'vsqrtph %zmm{s1}, %zmm{dst}', fp)
        elif r == 4:
            fprint(f'vfmsub132ph %zmm{s1}, %zmm{s2}, %zmm{dst}', fp)
    fprint(f'skip{lname}:', fp)
    fprint(f'popf', fp)
    lname += 1

def gen_asm_program(rfp, wfp):
    rfpiter = iter(rfp)
    for line in rfpiter:
        fprint(line, wfp, end='')
        if line.strip().startswith(ENTRY_NAME):
            break
    for line in rfpiter:
        gen_avx512_fp16_insns(random.randint(4, 16), wfp)
        fprint(line, wfp, end='')
        if line.strip().startswith('ret'):
            break
    for line in rfpiter:
        fprint(line, wfp, end='')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f'Usage: {sys.argv[0]} <flag>')
        sys.exit(1)
    random.seed(time.time())
    with open('output.c', 'w') as fp:
        gen_c_program(sys.argv[1], fp)
    os.system('gcc output.c -S')
    with open('output.s') as rfp:
        with open('challenge.s', 'w') as wfp:
            gen_asm_program(rfp, wfp)
    os.system('gcc -s challenge.s check_cpuid.s')
