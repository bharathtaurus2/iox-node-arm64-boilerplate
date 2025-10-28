# Use official Node.js base image for ARM64
FROM --platform=linux/arm64/v8 node:20-slim

# Required IOx metadata labels
LABEL io.cisco.app.name="sample-node-arm64"
LABEL io.cisco.app.version="1.0"
LABEL io.cisco.app.vendor="YourCompany"
LABEL io.cisco.app.description="Sample Node.js app for IOx on ARM64"
LABEL io.cisco.app.type="docker"
LABEL io.cisco.app.cpuarch="arm64"

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Define the default command
CMD ["node", "index.js"]
