#!/bin/sh

cd ~/docker || exit 1  # Если директория не найдена, выход с ошибкой

echo "Fetching the latest changes from the repository..."

git pull https://github.com/ReagentFlow/docker.git || {
        echo "Failed to pull the latest changes. Exiting..."
        exit 1
}

cd backend

git pull || {
        echo "Failed to pull the latest changes. Exiting..."
        exit 1
}

cd ..
cd frontend

git pull || {
        echo "Failed to pull the latest changes. Exiting..."
        exit 1
}

echo "Repository successfully updated."
