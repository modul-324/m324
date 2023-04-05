FROM node:18-slim

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn lint --fix

RUN yarn test

RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start" ]