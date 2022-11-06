import pyshark

cap = pyshark.FileCapture("./keyboardwarrior.pcap", use_json=True)

filtered_packets = []

# these can be found online
KEY_CODES = {
4:"A",
5:"B",
6:"C",
7:"D",
8:"E",
9:"F",
10:"G",
11:"H",
12:"I",
13:"J",
14:"K",
15:"L",
16:"M",
17:"N",
18:"O",
19:"P",
20:"Q",
21:"R",
22:"S",
23:"T",
24:"U",
25:"V",
26:"W",
27:"X",
28:"Y",
29:"Z",
30:"1",
31:"2",
32:"3",
33:"4",
34:"5",
35:"6",
36:"7",
37:"8",
38:"9",
39:"0",
40:"\n",
44:" ",
45:"-",
46:"=",
47:"{",
48:"}",
}

for packet in cap:
    # size of data transmission
    if packet.length == 20:
        if 'BTATT' in packet \
            and packet['BTATT'].get_field('value') not in { '00:00:00:00:00:00:00:00', '02:00:00:00:00:00:00:00'}:
            filtered_packets.append(packet['BTATT'].get_field('value'))

flag = ""

for val in filtered_packets:
    char = int(val.split(":")[2], 16)
    flag += KEY_CODES[char]
    
print("buckeyectf{" + flag.replace("-", "_").split("{")[1].split('}')[0] + '}')