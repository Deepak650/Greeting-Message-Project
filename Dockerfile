# Use the official Node.js image as the base image
FROM node:latest-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json if they exist
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files (HTML, CSS, JavaScript)
COPY . .

# Build the application if necessary (e.g., for frontend frameworks like React)
# RUN npm run build

# Expose the port that the app will run on
EXPOSE 8080

# Command to start the application
CMD ["npm", "start"]
