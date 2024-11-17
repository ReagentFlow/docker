#!/bin/sh

cd ~/docker/backend || exit 1

echo "Applying Django migrations..."

sleep 12

docker exec rf-backend sh -c "python manage.py migrate" || {
    echo "Django migrations failed. Exiting..."
    exit 1
}

echo "Django migrations completed successfully."
