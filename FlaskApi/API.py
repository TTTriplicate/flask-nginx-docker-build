from flask import Flask

app = Flask(__name__)

@app.route('/')
def testFlask():
    return "Flask is running!"
