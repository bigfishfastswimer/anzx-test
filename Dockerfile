FROM golang:alpine as build

ENV GO111MODULE=on

RUN apk update --no-cache && \
    apk add git

WORKDIR /app

ADD ./ /app

RUN go build -o golang-test  .

### second stage ###
FROM alpine:3.12

COPY --from=build /app/golang-test /app/

WORKDIR /app

ENTRYPOINT ["/app/golang-test"]

EXPOSE 8000

