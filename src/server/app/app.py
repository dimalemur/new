from flask import Flask, render_template, request
import json

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        print(request.data.decode("utf-8"))
        return request.data
    else:
        return 'xex'


if __name__ == '__main__':
    app.run(debug=True)
