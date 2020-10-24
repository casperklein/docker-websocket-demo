FROM	node:alpine

ENV	USER="casperklein"
ENV	NAME="websocket-demo"
ENV	VERSION="0.1"

WORKDIR /app

RUN	npm install ws node-static

COPY	rootfs /app

EXPOSE	80 8080

ENTRYPOINT ["node", "server.js"]
