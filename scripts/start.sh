#!/bin/bash

echo "Starting Film Production Management System..."

# Check if .env exists
if [ ! -f .env ]; then
    echo "Error: .env file not found. Please copy .env.example to .env and configure it."
    exit 1
fi

# Start server
if command -v python3 &> /dev/null; then
    echo "Starting Python HTTP server on port 8000..."
    python3 -m http.server 8000 -d src/
elif command -v python &> /dev/null; then
    echo "Starting Python HTTP server on port 8000..."
    python -m http.server 8000 -d src/
else
    echo "Python not found. Please install Python or use another server."
    echo "Alternative: npx serve src/ -p 8000"
    exit 1
fi
