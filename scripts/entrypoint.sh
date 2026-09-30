#!/bin/bash
set -e

echo ">>> Running Django checks..."
python manage.py check

echo ">>> Collecting static files..."
python manage.py collectstatic --noinput

echo ">>> Running database migrations..."
python manage.py migrate --noinput

echo ">>> Starting application..."
exec "$@"