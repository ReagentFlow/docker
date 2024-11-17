#!/bin/sh

echo "Stopping all running Docker containers..."

CONTAINERS=$(docker ps -q)

if [ -z "$CONTAINERS" ]; then
    echo "No running Docker containers to stop."
else
    docker stop $CONTAINERS
    echo "All running Docker containers have been stopped."
fi
