#!/bin/bash
# Startup script for Railway deployment
# Railway sets PORT automatically, default to 8080 if not set

PORT=${PORT:-8080}

echo "Starting gunicorn on port $PORT"
exec gunicorn --bind 0.0.0.0:$PORT --workers 1 --threads 8 --timeout 600 app:app

