from flask import Flask
import time
import os
import random

LOAD = 1

app = Flask(__name__)

@app.route("/wait/<int:length>")
def wait(length):
    time.sleep(length)
    return ""

@app.route("/wait")
def random_wait():
    time.sleep(random.randint(1,20))
    return ""

@app.route("/load")
def increase_load():
    global LOAD
    LOAD += 1
    return ""

@app.route("/die")
def die():
    os.abort()
    return ""

@app.route("/load_wait")
def load_wait():
    global LOAD
    LOAD += 1
    time.sleep(LOAD/50.0)
    return ""
