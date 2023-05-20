FROM node:14-alpine as build-stage
LABEL authors="anthony"

WORKDIR /app

COPY ["package.json", "elm*.json", "./"]

RUN npm i elm

RUN npm i

COPY . .

CMD ["npm", "run", "build"]