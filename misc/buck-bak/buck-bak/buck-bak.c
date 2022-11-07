// ----- Buck-Bak by Judy Hopps Buckeye -----
#include <stdio.h>
#include <string.h>

void init() {
  setvbuf(stdout, NULL, _IONBF, 0);
}

int main() {
  char bbfilename[15] = "bbfile.txt";
  FILE *bbfile = NULL;
  char title[40];
  char body[100];
  char c;

  init();

  printf("Welcome to Buck Bak!\n");
  printf("Read the thoughts of other Buckeyes on OSU's campus and post your own.\n");
  printf("First, write something to post\n\n");

  printf("Title: ");
  fgets(title, 40, stdin);
  title[strcspn(title, "\n")] = 0;

  printf("Body:\n");
  fgets(body, 200, stdin);
  body[strcspn(body, "\n")] = 0;

  printf("\nThanks! Your post:\n");
  printf("%s\n", title);
  printf("%s\n", body);

  printf("\nViewing all posts:\n\n");
  printf("---------------\n");

  bbfile = fopen(bbfilename, "a+");

  if (bbfile == NULL) {
    printf("Couldn't open bbfile :(\n");
    return 1;
  }
  fprintf(bbfile, "Title: %s\nBody: %s\n\n", title, body);

  fseek(bbfile, 0, SEEK_SET);
  c = fgetc(bbfile);
  while (c != EOF)
  {
      printf("%c", c);
      c = fgetc(bbfile);
  }

  fclose(bbfile);
  return 0;
}

