FROM alpine:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN apt-get install nodejs npm

WORKDIR /app

COPY "~/Desktop/supermarket" /app

RUN npm install

EXPOSE 9005