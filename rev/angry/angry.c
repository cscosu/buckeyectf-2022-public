#include <stdio.h>
#include <string.h>

char flag[] = {0x89, 0xea, 0x8d, 0x6d, 0xac, 0x97, 0xb2, 0xed,
    0x6e, 0x1d, 0x24, 0xc6, 0x1b, 0xfa, 0x89, 0x66,
    0x1d, 0x8e, 0xcc, 0x27, 0xaf, 0x3a, 0xa1, 0x68,
    0x6e, 0xd7, 0xb9, 0xe8, 0x72, 0x99, 0xe4, 0x97,
    0xbe, 0x0
};

char rotate(unsigned char byte, unsigned char shift){
    unsigned char num_bits = 8;
    shift %= num_bits;
    return (byte<<shift)|(byte>>(num_bits - shift));
}

int angryfrob(unsigned char *tofrob, unsigned char special){
    size_t length = strlen(tofrob);
    unsigned char shift = special;
    for(int i = 0; i < length; i++){
        tofrob[i] = rotate(tofrob[i], shift);
        shift = tofrob[i];
    }
}


int main(void){
    unsigned char special_num = 42;
    unsigned char input[100];
    printf("Welcome to Angry Frob, not your normal frob.\n");
    printf("The special number today is... %d\n", special_num);
    printf("Enter something for us to frobnicate: \n");
    fgets(input, 99, stdin);
    input[strcspn(input, "\n")] = '\0';
    angryfrob(input, special_num);
    if((strlen(input) == strlen(flag)) && (strcmp(input, flag) == 0)){
        printf("Congratulations, you found the special string to frob.\n");
    } else {
        printf("Failure, you didn't send an interesting string.\n");
    }

    return 0;
}