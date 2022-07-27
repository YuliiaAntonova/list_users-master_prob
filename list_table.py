import os

from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///db.sqlite'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql+psycopg2://cnitzxubyjqkir:2f0fbf9fd751619721b37a7675bb5499d4dff71c41530ae20e565c63f9fc9e0f@ec2-54-75-184-144.eu-west-1.compute.amazonaws.com:5432/dcmbsntuh551up'

# app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64), index=True)
    age = db.Column(db.Integer, index=True)
    address = db.Column(db.String(256))
    phone = db.Column(db.String(20))
    email = db.Column(db.String(120))

    def to_dict(self):
        return {
            'name': self.name,
            'age': self.age,
            'address': self.address,
            'phone': self.phone,
            'email': self.email
        }


db.create_all()


@app.route('/')
def index():
    return render_template('ajax_table.html', title='Ajax Table')


@app.route('/api/data')
def data():
    return {'data': [user.to_dict() for user in User.query]}


if __name__ == '__main__':
    app.run()
