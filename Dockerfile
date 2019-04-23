FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add yarn
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN yarn
ENTRYPOINT ["yarn", "start"]
