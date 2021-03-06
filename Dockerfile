FROM node:11-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN yarn build

EXPOSE 3000


CMD ["node", ".build/index.js"]
