# Use the official Node.js image as a base
FROM node:18-alpine as build

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port Cloud Run will use (this is just for documentation purposes, not functional in production)
EXPOSE 8080

# Start the application, ensuring it listens on the PORT environment variable
CMD ["node", "index.js"]
