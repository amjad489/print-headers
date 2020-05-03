from flask import request, Flask, jsonify

app = Flask(__name__)


@app.route('/', methods=["GET"])
def index():
    a = {}
    for i in request.headers:
        x = {i[0]: i[1]}
        a.update(x)
    print(a)
    return jsonify(a)

