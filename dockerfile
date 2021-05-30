FROM alpine

LABEL maintainer="gkramm83@gmail.com"

RUN apk add --update nodejs npm  && npm install express

COPY . /src

WORKDIR /src/

EXPOSE 8000

CMD ["node","server.js"]
