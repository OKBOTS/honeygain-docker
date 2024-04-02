# Use a lightweight Linux distribution as base
FROM alpine:latest

# Install required tools
RUN apk add --no-cache curl

# Set working directory
WORKDIR /usr/src/app

# Download pawns-cli binary
RUN curl -o pawns-cli https://cdn.pawns.app/download/cli/latest/linux_aarch64/pawns-cli
# && \
#    chmod +x pawns-cli

# Set command to run pawns-cli with provided arguments
CMD ["./pawns-cli", "-email=legendgamingyt835@gmail.com", "-password=123890123", "-device-name=raspberrypi", "-device-id=raspberrypi1", "-accept-tos"]
