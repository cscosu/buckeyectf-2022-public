# file: app.py
from flask import Flask, render_template, request, Response
from binascii import hexlify
import string
from utils import Hex, generate_text, get_distances
import os

app = Flask(__name__)

flag = os.getenv("FLAG")
flag_path = os.getenv("CIPHER")

MIN = Hex(0)
MAX = Hex.from_str("ffffff")

@app.route("/", methods=['GET'])
def index():    
    bg = MIN
    text = MAX
    
    return render_template("index.html", bgcolor=str(bg), color = str(text), color_desc=generate_text(bg))

@app.route(f"/{flag_path}", methods=['GET'])
def get_flag():
    return render_template("index.html", bgcolor = str(MAX), color = str(MIN), color_desc=f"Whoa! How'd you find this? Guess I owe you the flag: {flag}")
    

@app.route("/<url>", methods=['GET'])
def search(url : str):    
    if not isinstance(url, str) or len(url) > 16 * 2 * 3:
        return Response("Page not found", status=404)

    # pad url string to 48 bytes
    padded = url.ljust(16 * 2 * 3, '0')
    
    # make sure url is only hexadecimal
    if not all(c in string.hexdigits for c in padded):
        return Response("Only hexadecimal values [0-9A-Fa-f] is allowed in URL", status=404)

    # compute distance ratio
    distances = get_distances(padded, flag_path)
        
    # background is ffffff
    text = Hex.from_distances(distances)
    bg = MAX.sub(text)
            
    return render_template("index.html", bgcolor=str(bg), color = str(text), color_desc=generate_text(bg))
    
if __name__ == "__main__":
    app.run()