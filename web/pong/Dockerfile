FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm rebuild bcrypt --build-from-source
RUN npm install -g nodemon

COPY . .

ENV PORT=3000
ENV NODE_ENV=production
ENV FLAG=buckeye{1f_3v3ry0n3_ch3475_175_f41r}

CMD ["nodemon"]
