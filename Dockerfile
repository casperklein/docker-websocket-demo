FROM	node:alpine

WORKDIR	/app

RUN	npm install ws node-static

COPY	rootfs /app

EXPOSE	80 8080

ENTRYPOINT ["node", "server.js"]
