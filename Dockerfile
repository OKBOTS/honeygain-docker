# Use the official Python image as a base
FROM python:3.9-slim

# Set environment variables
ENV EMAIL="legendgamingyt835@gmail.com" \
    PASSWORD="L@bin123890" \
    DEVICE_NAME="DEVICE_NAME"

# Install dependencies
RUN pip install --no-cache-dir honeygain

# Run the command
CMD honeygain -tou-accept -email $EMAIL -pass $PASSWORD -device $DEVICE_NAME
