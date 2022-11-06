from flask import Flask, render_template, request, flash, redirect
from check_hash import check_hash
import os

app = Flask(__name__)
app.config['SECRET_KEY'] = b'F\xef80iT\xf1u7\x17}L' # for flash()

@app.route("/", methods=["GET"])
def home():
    return render_template('home.html')

@app.route("/", methods=["POST"])
def post():
    if 'submission' in request.files:
        submission = request.files['submission']
        if submission.filename != '' and submission.content_type.startswith('image/'):
            if check_hash(submission):
                flash(f'Close enough, here\'s the flag!! {os.environ["FLAG"]}')
            else:
                flash('Hmmmm... don\'t think so')
        else:
            flash("You must submit a valid image!")
    
    return redirect(request.url)
