#!/bin/bash

# Collect static files
python manage.py collectstatic --noinput

# Start the Django application using gunicorn
gunicorn --worker-tmp-dir /dev/shm busking-api.wsgi