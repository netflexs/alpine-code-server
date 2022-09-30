FROM alpine:3.14
EXPOSE 8080
ENV PASSWORD "nevo2k22"

RUN apk update && apk add curl wget tar
RUN apk add --update nodejs nodejs-npm
RUN npm install --global code-server --unsafe-perm

CMD ["code-server","--port 8080"]
