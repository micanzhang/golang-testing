FROM golang:1.8.5-alpine

LABEL maintainer="Mican Zhang <micanzhang@gmail.com>"

ADD ../coverage.sh /usr/bin/coverage
ADD ../install.sh install.sh
RUN /bin/sh install.sh && rm install.sh

WORKDIR $GOPATH
