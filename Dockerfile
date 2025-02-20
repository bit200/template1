FROM node:18-alpine

WORKDIR /app

# Install screen
#RUN npm install -g pm2

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
