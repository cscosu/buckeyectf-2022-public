from flask import Flask, render_template, request, flash, redirect
from pyzbar import pyzbar
from PIL import Image
import os
import random
import sqlite3
import qrcode
from qrcode.image.styledpil import StyledPilImage

app = Flask(__name__)
app.config['SECRET_KEY'] = b'\xce\x82Q\x15L\xbd\xf0\x1f\xe3\x9b\x85\xe7' # for flash()

con = sqlite3.connect("database.db")
cur = con.cursor()
cur.execute("CREATE TABLE posts(postid INTEGER PRIMARY KEY, content TEXT)")
cur.execute("INSERT INTO posts(postid, content) VALUES (0, 'buckeye{4n_1d_numb3r_15_N07_4_p455w0rd}')")
con.commit()
print("Initialized db")

random.seed()
start_id = random.randrange(10000000, 49999999)
print(f"Starting at id {start_id}")

def db_put(post_id, txt):
    cur.execute("INSERT INTO posts(postid, content) VALUES (?, ?)", (post_id, txt))
    con.commit()

def db_get(post_id):
    res = cur.execute("SELECT content FROM posts WHERE postid = ?", (post_id,))
    match = res.fetchone()
    if match is None:
        return ''
    return match[0]

def get_post(post_id):
    content = db_get(post_id)
    if content == '':
        flash("Sorry, we lost your post.")
        return redirect(request.url)
    return render_template('post.html', post_code=os.path.join("codes", str(post_id) + ".png"), post_content=content)
    
@app.route("/", methods=["GET"])
def home():
    return render_template('home.html')

@app.route("/", methods=["POST"])
def post():
    global start_id

    post_id = -1
    if 'content' in request.form:
        content = request.form['content']
        print(f"text entry, was '{content}'")
        if len(content) == 0:
            flash("Your post cannot be empty.")
            return redirect(request.url)
        post_id = start_id
        start_id += 1
        db_put(post_id, content)
        qr = qrcode.QRCode(version=3)
        qr.add_data(str(post_id))
        qr.make(fit=True)
        img = qr.make_image() #(image_factory=StyledPilImage, embeded_image_path=os.path.join("./static", "logo_qr.png"))
        img.save(os.path.join("./static/codes", str(post_id) + ".png"))

    elif 'ticket' in request.files:
        ticket = request.files['ticket']
        print(f"got file, was {ticket}, type {ticket.content_type}")
        if ticket.filename == '' or ticket.filename[-4:].lower() != '.png' or ticket.content_type != 'image/png':
            flash("You must submit a valid PNG.")
            return redirect(request.url)
        try:
            codes = pyzbar.decode(Image.open(ticket))
            payload = codes[0].data.decode()
            post_id = int(payload)
        except:
            flash("Invalid ticket.")
            return redirect(request.url)
    
    return get_post(post_id)
