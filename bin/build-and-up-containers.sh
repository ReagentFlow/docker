#!/bin/sh

cd ~/docker || exit 1

echo "Building and starting Docker containers..."
docker compose -f docker-compose-prod.yml up --build -d || {
    echo "Failed to build and start Docker containers. Exiting..."
    exit 1
}

echo "Docker containers are up and running:"
docker ps
