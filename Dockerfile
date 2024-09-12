FROM node:18-alpine

WORKDIR /app

COPY Portifolio.tar ./

RUN tar -xzvf Portifolio.tar --strip-components=1

run yarn install

EXPOSE 3000

CMD ["yarn", "dev"]

