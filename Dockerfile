FROM python:3.12-slim AS backend

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Default environment variables (can be overridden later)
ENV BACKEND_PORT=8000
ENV POSTGRES_HOST=database
ENV POSTGRES_PORT=5432
ENV POSTGRES_USER=conduit
ENV POSTGRES_DB=conduit
ENV DJANGO_ALLOWED_HOSTS=127.0.0.1
ENV DEBUG=False

# Copy the application code
COPY . .

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Expose the backend port
EXPOSE $BACKEND_PORT

# Run the entrypoint script on container startup
ENTRYPOINT [ "/bin/sh", "-c", "/app/entrypoint.sh" ]