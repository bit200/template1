FROM node:18-alpine

WORKDIR /app

# Install screen
#RUN npm install -g pm2

RUN apk add --no-cache openssh bash

COPY . .

RUN npm install

# Generate SSH host keys
RUN ssh-keygen -A

# Set a root password (replace 'your_password' with a strong password)
RUN echo "root:root" | chpasswd

EXPOSE 3000

CMD /usr/sbin/sshd -D
