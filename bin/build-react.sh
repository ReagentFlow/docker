#!/bin/sh

cd ~/docker/frontend

echo "Installing dependencies..."
npm install || {
        echo "Failed to install dependencies. Exiting..."
        exit 1
}

echo "Building the React application..."
npm run build || {
        echo "Build failed. Exiting..."
        exit 1
}

echo "Build completed successfully."
