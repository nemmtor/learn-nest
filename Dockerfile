FROM node:14.15.4-alpine

RUN mkdir -p /home/api/ && chown -R node:node /home/api

WORKDIR /home/api

COPY package.json .

COPY yarn.lock .

RUN yarn

COPY --chown=node:node . .

EXPOSE 4000

CMD ["yarn", "start:dev"]