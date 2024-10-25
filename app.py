#app.py
from flask import Flask
app = Flask(_name_)
@app.route("/")
def hello_world():
	return "hello, World! 2301"
