#!/bin/sh
# Startup script that properly reads PORT from Railway environment
PORT=${PORT:-8080}
exec gunicorn --bind 0.0.0.0:$PORT --workers 2 --timeout 120 app:app
