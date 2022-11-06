import requests
import re
from binascii import hexlify
import numpy as np  
import matplotlib.pyplot as plt
import pandas as pd
from random import randbytes

url = "http://localhost:5000"

guesses = []

for i in range(16 * 8 * 3):
    guess = ["0"] * 16 * 8 * 3
    
    guess[i] = str(1)
    
    s = "".join(guess)
    
    int_val = int(s, 2)
    
    hex_val = hex(int_val)[2:]
    
    padded = hex_val.zfill(16 * 2 * 3)
        
    guesses.append(hex(int("".join(guess), 2))[2:].zfill(16 * 2 * 3))

colors = ""

# this only works with the cipher that is set in vars.env
# otherwise, you will need to manually determine what 1-byte changes
# cause how much of a difference in the background

for guess in guesses:
    r = requests.get(f"{url}/{guess}")
    bg = re.search(r"(background:\s*#)([A-Fa-f0-9]{6})", r.text).group(2)
    colors += "1" if int(bg, 16) in {0xc4c2b9, 0xc3c3b9, 0xc3c2ba} else "0"
   
actual_hash = hex(int(colors, 2))[2:]

r = requests.get(f"{url}/{actual_hash}")

print("hash: ", actual_hash, " flag: ", r.text)