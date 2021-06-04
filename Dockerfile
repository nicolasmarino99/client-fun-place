FROM node:14-alpine

FROM gatsbyjs/gatsby:onbuild as build

FROM gatsbyjs/gatsby
WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./package-lock.json ./
COPY ./gatsby-config.js ./

RUN npm install

COPY . .

EXPOSE 3001

CMD [ "npm", "start" ]