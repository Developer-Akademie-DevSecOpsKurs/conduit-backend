#!/bin/sh

python manage.py makemigrations
python manage.py migrate

gunicorn --bind 0.0.0.0:${BACKEND_PORT} conduit.wsgi:application