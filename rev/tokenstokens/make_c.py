# have something to parse token values then run execvp

import random
from transformers import AutoTokenizer
tokenizer = AutoTokenizer.from_pretrained("etokenizer")

# https://bjpcjp.github.io/pdfs/devops/linux-commands-handbook.pdf
# cat 5
commands = ['man', 'ls', 'cd', 'pwd', 'touch', 'cat', 'tail', 'less', 'wc', 'echo', 'grep', 'sort', 'uniq', 'diff', 'du', 'df', 'basename', 'dirname', 'ps', 'top', 'jobs', 'type', 'which', 'whoami', 'who', 'ping', 'traceroute', 'clear', 'uname', '']

# files, ip, ls args
# flag.txt 14
arguments = ['8.8.4.4','flag', '-a', '8.8.8.8', '-A', '-b', 'B', 'fla', 'fl', 'c', 'C', '-d', '-D', '-f', 'flag.txt', 'f', '-g', '-G', '-h', '-H', '-i', '-I', '-k', 'Nice try!', '-L', '-l', '-m', '-n', '-o', '-p', '-q', '-Q', '-r', 'not-flag', 'not-flag.txt', '-R', '-s', '-S', '-t', '-u', '-v', '-w', '-x', '-Z', '']

etokenlen = 13141

tokens = tokenizer.convert_tokens_to_ids(tokenizer.tokenize('underm potato')) 
len1 = len(commands)
len2 = len(arguments)
exclude1 = commands.index('cat')
exclude2 = len1 + arguments.index('flag.txt')
yspecial1 = tokens[0]
yspecial2 = tokens[1]

print(len1, len2, exclude1, exclude2, yspecial1, yspecial2)

f = open('untitled4.c', 'w')

# print C headers
f.write('#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n#include <unistd.h>\n#include <sys/types.h>\n#include <sys/wait.h>\n')
for i in range(len1):
    f.write('char sg' + str(i) + '[64]=\"' + commands[i] + '\";')

# print command + argument options
for j in range(len2):
    f.write('char sg' + str(j+1+i) + '[64]=\"' + arguments[j] + '\";')

# print main
f.write('\nint main(int argc, char **argv){\n')
f.write('char *eb[64];\n')
f.write('int a1 = 0;\n')
f.write('int a2 = 0;\n')
f.write('char s1[64];\n')
f.write('char s2[64];\n')
f.write('pid_t p;\n')
f.write('int s;\n')
f.write('if (argc < 3) {perror("need at least 2 args"); exit(EXIT_FAILURE);}\n')
f.write('a1 = atoi(*(argv + 1 + (argc - 2) / 2)); a2 = atoi(*(argv + 2 + (argc - 2) / 2));\n')

# commands
z = exclude1
while z == exclude1:
    z = random.randint(0,len1-1)

f.write('if(a1 == 0){memset(s1, 0, sizeof s1); strcat(s1, sg' + str(z) + ');}')

for x in range(1,etokenlen):
    z = random.randint(0,len1-1)
    if (x == yspecial1):
        f.write('else if(a1 == ' + str(x) + '){memset(s1, 0, sizeof s1); strcat(s1, sg' + str(exclude1) + ');}')
    else:
        while z == exclude1:
            z = random.randint(0,len1-1)
        f.write('else if(a1 == ' + str(x) + '){memset(s1, 0, sizeof s1); strcat(s1, sg' + str(z) + ');}')

z = random.randint(0,len1-1)
while z == exclude1:
    z = random.randint(0,len1-1)
f.write('else{memset(s1, 0, sizeof s1); strcat(s1, sg' + str(z) + ');}')

f.write('\n')

# arguments
z = exclude2
while z == exclude2:
    z = len1 + random.randint(0,len2-1)

f.write('if(a2 == 0){memset(s2, 0, sizeof s2); strcat(s2, sg' + str(z) + ');}')
for y in range(1,etokenlen):
    z = len1 + random.randint(0,len2-1)
    if (y == yspecial2):
        f.write('else if(a2 == ' + str(y) + '){memset(s2, 0, sizeof s2); strcat(s2, sg' + str(exclude2) + ');}')
    else:
        while z == exclude2:
            z = len1 + random.randint(0,len2-1)
        f.write('else if(a2 == ' + str(y) + '){memset(s2, 0, sizeof s2); strcat(s2, sg' + str(z) + ');}')

z = len1 + random.randint(0,len2-1)
while z == exclude2:
    z = len1 + random.randint(0,len2-1)

f.write('else{memset(s2, 0, sizeof s2); strcat(s2, sg' + str(z) + ');}')

f.write('\n')

f.write('p = fork();eb[0] = s1;eb[1] = s2;eb[2] = NULL;')
f.write('if (p == 0) {execvp(*eb, eb);waitpid(p, &s, 0);}')
f.write('else {waitpid(p, &s, 0);}')

f.write('return 0;}\n')

f.close()