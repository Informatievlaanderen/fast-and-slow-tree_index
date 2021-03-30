FROM node:lts-alpine

RUN npm install -g typescript@4.0.3

WORKDIR /app

ADD package*.json /app/
RUN npm install

ADD . /app


RUN tsc --project tsconfig.json

EXPOSE 3000
CMD [ "node", "lib/app.js" ]
