# Use Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Expose port (Railway sets PORT dynamically)
EXPOSE 8080

# Run with gunicorn - use shell form to properly expand PORT
CMD gunicorn --bind 0.0.0.0:${PORT:-8080} --workers 1 --threads 8 --timeout 600 app:app
