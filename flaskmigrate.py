import flask_script
from flask_migrate import MigrateCommand
from app import app

manager = flask_script.Manager(app)
manager.add_command('db', MigrateCommand)

if __name__ == '__main__':
    manager.run()