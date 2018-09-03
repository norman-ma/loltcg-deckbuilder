web: gunicorn -w 4 -b "0.0.0.0:$PORT" app:app
release: python manage.py db upgrade