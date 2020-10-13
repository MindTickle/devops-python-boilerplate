import logging
from flask import Flask, jsonify


logging.basicConfig(level=logging.DEBUG, format='%(asctime)s %(levelname)-8s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S')

app = Flask(__name__)

def hello():
    return {'message': 'Hello, World!'}

@app.route("/")
def hello_route():
    return jsonify(hello())


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)
