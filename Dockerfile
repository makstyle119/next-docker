FROM node:alpine:3.16

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

CMD [ "yarn", "dev" ]