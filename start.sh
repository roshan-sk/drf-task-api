#!/bin/bash

# Apply migrations automatically
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start Gunicorn
gunicorn drf_task_api.wsgi --bind 0.0.0.0:$PORT
