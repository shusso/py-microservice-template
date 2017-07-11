import os
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# set config
app_settings = os.getenv('APP_SETTINGS')
app.config.from_object(app_settings)

db = SQLAlchemy(app)

# template model
class Template(db.Model):
    __table_nane__ = "template"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    string_var = db.Column(db.String(128), nullable=False)
    created_at = db.Column(db.DateTime, nullable=False)

    def __init__(self, string_var):
        self.string_var = string_var


@app.route('/ping', methods=['GET'])
def ping():
    return jsonify({'status': 'success',
                    'message': 'pong'})
