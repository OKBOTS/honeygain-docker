# Use Ubuntu as the base image
FROM ubuntu:latest

# Install wget
RUN apt-get update && apt-get install -y wget

RUN wget -O install.sh https://app.proxylite.ru/install.sh
# Copy the installation script into the container
COPY install.sh /install.sh

# Make the script executable
RUN chmod +x /install.sh

# Run the installation script when the container starts
CMD ["/install.sh", "511979"]
