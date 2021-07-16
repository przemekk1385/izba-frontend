FROM node:lts-alpine

RUN mkdir -p /usr/local/src/app
WORKDIR /usr/local/src/app

COPY package*.json .
RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=5000

CMD [ "npm", "start" ]