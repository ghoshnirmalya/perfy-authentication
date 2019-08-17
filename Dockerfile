FROM mhart/alpine-node:11.1.0

RUN mkdir /authentication-app

WORKDIR /authentication-app

ENV PATH /authentication-app/node_modules/.bin:$PATH

COPY . /authentication-app

RUN yarn install

CMD ["yarn", "start"]
