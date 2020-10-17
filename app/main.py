from flask import Flask, request
from MysqlConn import connector as conn
app = Flask(__name__)

@app.route('/')
def test():
    return "Hello from Flask!"

@app.route('/getUser')
def get():
    count = conn.showDatabases()
    return "There are " + str(count) + " databases on the cluster!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=80)
