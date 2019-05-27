FROM node:10-alpine

RUN yarn global add @vue/cli @vue/cli-service-global

WORKDIR /app
