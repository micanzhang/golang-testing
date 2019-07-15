#!/bin/sh

apt-get update && apt-get install git bash openssh-client

go get -u github.com/axw/gocov/gocov
go get -u gopkg.in/matm/v1/gocov-html
go get -u github.com/AlekSi/gocov-xml
go get -u golang.org/x/lint/golint
go get -u honnef.co/go/tools/cmd/staticcheck
# remove source files to reduce image size
rm -rf $GOPATH/src/*
