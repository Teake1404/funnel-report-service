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

# Make startup script executable
RUN chmod +x start.sh

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Expose port (Railway sets PORT dynamically)
EXPOSE 8080

# Use startup script which properly handles PORT variable
CMD ["./start.sh"]
