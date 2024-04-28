# Use the Alpine Linux as base image
FROM alpine:latest

# Install Node.js and npm
RUN apk add --update nodejs npm git && \
    rm -rf /var/cache/apk/*

# Set the working directory in the container
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/chasc0des/nodejs-login-chat-app.git .

# Install dependencies
RUN npm install

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]

