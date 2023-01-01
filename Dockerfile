FROM	node:alpine

ARG	VERSION="unknown"

LABEL	org.opencontainers.image.description="Just a little websocket demo.."
LABEL	org.opencontainers.image.source="https://github.com/casperklein/docker-websocket-demo/"
LABEL	org.opencontainers.image.title="docker-websocket-demo"
LABEL	org.opencontainers.image.version="$VERSION"

WORKDIR	/app

RUN	npm install ws node-static

COPY	rootfs /app

EXPOSE	80 8080

ENTRYPOINT ["node", "server.js"]
