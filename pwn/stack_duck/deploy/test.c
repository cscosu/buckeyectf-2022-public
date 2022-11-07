
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

volatile long DuckCounter;

__attribute__((noinline))
void win() {
    system("/bin/sh");
}

__attribute__((noinline))
void submit_code() {
    char temp_code[512];

    printf("Please enter your code. Elon will review it for length.\n");
    fgets(temp_code, 552, stdin);
}

__attribute__((noinline))
int menu() {
    printf("Twitter Employee Performance Review\n");
    printf("***********************************\n\n");
    printf("1. Submit code for approval\n");
    printf("2. Get fired\n");

    return 0;
}

int main() {
    setvbuf(stdout, 0, 2, 0);
    int run = 1;
    while (run) {
        char buf[0x20];
        menu();
        fgets(buf, 0x20, stdin);
        int choice = atoi(buf);
        switch (choice) {
            case 1:
                submit_code();
                break;
            case 2:
                run = 0;
                break;
            default:
                break;
        }
    }
    return 0;
}
