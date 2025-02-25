FROM node:18-alpine

WORKDIR /app

# Install screen
#RUN npm install -g pm2
RUN apk add --no-cache openssh bash

COPY . .

RUN npm install

EXPOSE 3000

CMD ["sh", "./cmd.sh"]
