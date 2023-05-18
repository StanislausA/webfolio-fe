# Development Stage
FROM node:14-alpine as dev-stage
LABEL authors="anthony"

WORKDIR /webfolio-app

COPY ["package.json", "elm*.json", "./"]

RUN npm i elm

RUN npm i

COPY . .

CMD ["npm", "run", "dev"]