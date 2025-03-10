# syntax=docker/dockerfile:1

FROM node:18-alpine

RUN apk add --no-cache python3 g++ make

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --production

COPY . .

CMD ["node", "src/index.js"]
