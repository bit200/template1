# Use a Node.js base image
FROM node:18-alpine 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists)
# COPY package*.json ./

# # Install project dependencies.  Use a separate layer for dependencies to leverage Docker caching.
# RUN npm install 

# Copy the rest of the application code
COPY . .

# Expose the port that the React app runs on (usually 3000)
EXPOSE 3000

# Start the React app.  Use the appropriate command for your setup.
CMD ["npm", "start"]

