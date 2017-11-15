FROM golang:1.9.2-alpine

LABEL maintainer="Mican Zhang <micanzhang@gmail.com>"

ADD ../install.sh install.sh
ADD ../coverage.sh /usr/bin/coverage
RUN /bin/sh install.sh && rm install.sh

WORKDIR $GOPATH
