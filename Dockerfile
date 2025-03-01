FROM node:18-alpine

WORKDIR /app

# Install screen
#RUN npm install -g pm2

RUN apk add --no-cache openssh bash util-linux

COPY . .

RUN npm install

EXPOSE 3000

CMD /usr/sbin/sshd -D
