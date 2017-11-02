#!/bin/sh

apk update && apk add git bash && rm -rf /var/cache/apk/*

go get -u github.com/axw/gocov/gocov
go get -u github.com/AlekSi/gocov-xml
go get -u github.com/golang/lint/golint
# remove source files to reduce image size
rm -rf $GOPATH/src/*
