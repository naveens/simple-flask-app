import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return os.environ.get('POD_IP', 'Nothing to see here')

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
