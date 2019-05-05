#!/bin/sh

apk update && apk add git bash openssh-client && rm -rf /var/cache/apk/*

go get -u github.com/axw/gocov/gocov
go get -u gopkg.in/matm/v1/gocov-html
go get -u github.com/AlekSi/gocov-xml
go get -u github.com/golang/lint/golint
go get -u github.com/dominikh/go-tools/cmd/staticcheck
# remove source files to reduce image size
rm -rf $GOPATH/src/*
