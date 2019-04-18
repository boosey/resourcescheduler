FROM alpine:latest

WORKDIR /usr/src

RUN apk --no-cache add nodejs npm

COPY package.json .

RUN npm install

EXPOSE 3000/tcp

ENTRYPOINT ["npm", "start"]

COPY . .
