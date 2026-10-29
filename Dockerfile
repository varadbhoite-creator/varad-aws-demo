FROM node:18-alpine
WORKDIR /app

copy package*.json ./

RUN npm install

COPY . .

expose 4000

cmd ["node", "server.js"]