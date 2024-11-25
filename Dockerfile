# Use a lightweight base image
FROM alpine:latest

# Install curl for HTTP requests
RUN apk add --no-cache curl

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Define the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

