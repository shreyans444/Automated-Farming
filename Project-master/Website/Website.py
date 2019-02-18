from flask import Flask
from flask import render_template
from DbClass import DbClass

import os
from os import environ

app = Flask(__name__)


@app.route('/')
def homepage():
    return render_template('homepage.html')

@app.route('/licht')
def licht():
    return render_template('licht.html')

@app.route('/temperatuur')
def temp():
    return render_template('temp.html')

@app.route('/vochtigheid')
def vocht():
    return render_template('vocht.html')

@app.route('/contact')
def contact():
    return render_template('contact.html')

if __name__ == '__main__':
    #Check environment variable for port or take 8080 as default
    port = int(os.environ.get("PORT",8080))
    host = "172.18.10.10" #Listen to all IP's       i.p.v enkel 127.0.0.1
    app.run(host=host, port=port, debug=True)
