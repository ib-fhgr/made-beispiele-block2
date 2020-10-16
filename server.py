

from flask import request, jsonify, Flask

app = Flask(__name__)

data = [
  {'name':'A', 'message':'Hello?'},
  {'name':'B', 'message':'Hi there?'},
]

@app.route('/data', methods=['GET'])
def get_data():
    return jsonify(data=data)

@app.route('/data', methods=['POST'])
def post_data():
    json_data = request.json

    data.append({'name':json_data['name'], 'message':json_data['message']})

    return jsonify(result='OK'), 200

app.run()