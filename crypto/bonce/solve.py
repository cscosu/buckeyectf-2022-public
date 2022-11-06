output = []

with open('cleaned_output.txt') as file:
    lines = file.readlines()

for x in lines:
    output.append(x.split())

for i in range(len(output)):
    if i < 10:
        nonce = str(i) * 28
    else:
        nonce = str(i) * 14

    input = ''
    for j in range(28):
        input += chr(int(output[i][j]) ^ ord(nonce[j]))
    print(input)