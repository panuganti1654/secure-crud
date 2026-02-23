#!/bin/bash

echo "Checking Docker..."

if ! command -v docker &> /dev/null
then
    echo "Docker not installed"
    exit 1
fi

echo "Stopping existing containers..."
docker compose down -v

echo "Building and starting containers..."
docker compose up --build -d

echo "Deployment successful 🚀"
echo "Access the app at http://localhost"