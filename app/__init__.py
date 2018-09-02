from flask import Flask

from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = "change this to be a more random key"
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://lol:per4mance@localhost/lolcardb"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True  # added just to suppress a warning

app.config['APPLICATION_ROOT'] = "/app/"

db = SQLAlchemy(app)

UPLOAD_FOLDER = './app/static/uploads'
SECRET_KEY = 'Sup3r$3cretkey'

app.config.from_object(__name__)
from app import views
