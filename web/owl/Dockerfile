FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g nodemon
RUN npm install
RUN chmod 440 */*

COPY . .

ENV NODE_ENV=production
ENV DEBUG=zombie

CMD ["nodemon"]