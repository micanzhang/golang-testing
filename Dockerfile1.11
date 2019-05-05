FROM golang:1.11-alpine3.8

LABEL maintainer="Mican Zhang <micanzhang@gmail.com>"

RUN apk update && apk add gcc libc-dev
ADD install.sh install.sh
ADD coverage.sh /usr/bin/coverage
RUN /bin/sh install.sh && rm install.sh

WORKDIR $GOPATH
