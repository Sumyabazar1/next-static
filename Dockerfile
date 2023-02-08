FROM node:16.19-alpine AS builder
#application build
WORKDIR /usr/src/app
COPY ./package* ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "npm", "start" ]
