#!/bin/sh

cd ~/docker/backend || exit 1

echo "Collecting Django static files..."

docker exec rf-backend sh -c "python manage.py collectstatic --noinput" || {
    echo "Collect static files failed. Exiting..."
    exit 1
}

echo "Collecting static files completed successfully."
