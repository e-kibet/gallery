FROM node:14-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm config set unsafe-perm true


RUN npm install pm2 -g

RUN pm2 list

RUN npm install

EXPOSE 5000

CMD ["pm2-runtime", "start", "ecosystem.config.js"]
