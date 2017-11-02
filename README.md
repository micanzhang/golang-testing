# golang-testing

![Golang Testing](https://farm2.staticflickr.com/1622/24407557644_36087ca6de.jpg)

**Docker image includes golang coverage tools for testing.**

[![Build Status](https://travis-ci.org/micanzhang/golang-testing.svg?branch=master)](https://travis-ci.org/micanzhang/golang-testing)

## Feature

The docker images includes the following `golang` tools.

* [x] [gocov](https://github.com/axw/gocov/gocov) Coverage testing tool
* [x] [gocov-xml](https://github.com/AlekSi/gocov-xml) XML (Cobertura) export
* [x] [golint](https://github.com/golang/lint/golint) This is a linter for Go source code. (Golint requires Go 1.6 or later.)

## Install

Copy `coverage.sh` to `/usr/local/bin/coverage` and change permission.

```
$ curl https://raw.githubusercontent.com/appleboy/golang-testing/1.0.2/coverage.sh -o $GOPATH/bin/coverage
$ chmod +x $GOPATH/bin/coverage
```

## Usage

coverage tool document:

```
Generate test coverage statistics for Go packages.

  -- Command Flag --
  -h | --help                    Display this help and exit
  -m | --mode                    Set coverage mode. default is "set" (set|count|atomic)
  -d | --dir                     Set store coverage folder (default is ".cover")

  -- Command Action --
  tool                           Install go dependency tools like gocov or golint.
  testing                        Run go testing for all packages
  coverage                       Generate coverage report for all packages
  lint                           Generate Lint report for all packages
  vet                            Generate Vet report for all packages
  all                            Execute coverage、lint and vet report

Contribute and source at https://github.com/appleboy/golang-testing
```

## Run with docker


```
$ docker pull micanzhang/golang-testing
```

### docker command

Run testing in single docker command.

```
$ export PROJECT_PATH=/go/src/github.com/appleboy/golang-testing
$ docker run --rm \
    -v $(PWD):$PROJECT_PATH \
    -w=$PROJECT_PATH \
    appleboy/golang-testing \
    sh -c "coverage all"
```

Change `PROJECT_PATH` variable. Replace `github.com/appleboy/golang-testing` with your github path.
