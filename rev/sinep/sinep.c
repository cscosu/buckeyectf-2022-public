#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Please supply the text to apply Sinep's patented algorithm as an argument.\n");
        return 1;
    }

    printf("Your plain text: %s\n", argv[1]);
    printf("Applying Sinep Industry's Certified unbreakable algorithm.\n");

    char key[] = "sinep";

    char *input_str = argv[1];
    printf("Final: 0x");
    for (int i = 0; i < strlen(input_str); i++) {
        *(input_str + i) = *(input_str + i) ^ key[i % 5];
        printf("%02x", *(input_str + i));
    }
    printf("\n");
}
