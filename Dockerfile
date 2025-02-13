# Use a Node.js base image
FROM node:18-alpine 

# Set the working directory inside the container
WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

