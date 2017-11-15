# golang-testing

![Golang Testing](https://farm2.staticflickr.com/1622/24407557644_36087ca6de.jpg)

**Docker image includes golang coverage tools for testing.**

[![Build Status](https://travis-ci.org/micanzhang/golang-testing.svg?branch=master)](https://travis-ci.org/micanzhang/golang-testing)

## Feature

The docker images includes the following `golang` tools.

* [x] [gocov](https://github.com/axw/gocov/gocov) Coverage testing tool
* [x] [gocov-xml](https://github.com/AlekSi/gocov-xml) XML (Cobertura) export
* [x] [gocov-html](https://github.com/matm/gocov-html) HTML export
* [x] [golint](https://github.com/golang/lint/golint) This is a linter for Go source code. (Golint requires Go 1.6 or later.)

## Build

```
docker build -t micanzhang/golang-testing -f Dockerfile .
```

if you want to build different version, just replace `NAME` and `Dockerfile`:

```
docker build -t micanzhang/golang-testing:1.8 -f Dockerfile1.8 .
```

## Usage

coverage tool document:

```
Generate test coverage statistics for Go packages.

  -- Command Flag --
  -h | --help                    Display this help and exit
  -m | --mode                    Set coverage mode. default is "set" (set|count|atomic)
  -d | --dir                     Set store coverage folder (default is ".cover")
  -c | --commit                  Run action for specific commit
  -f | --format                  Coverage report format, supports: txt,xml,html Default:txt,html
  -- Command Action --
  tool                           Install go dependency tools like gocov or golint.
  testing                        Run go testing for all packages
  coverage                       Generate coverage report for all packages
  lint                           Generate Lint report for all packages
  vet                            Generate Vet report for all packages
  all                            Execute coverage、lint and vet report

Example:

1. run testing for all packages except vendor:
$ coverage testing

2. run testing for specific commit:
$ coverage -c HEAD..HEAD^2 testing

3. generate coverage report
$ coverage -f html,xml coverage

Contribute and source at https://github.com/micanzhang/golang-testing
```

### docker command

Run testing in single docker command.

```
$ export PROJECT_PATH=/go/src/github.com/julienschmidt/httprouter
$ docker run --rm \
    -v $GOPATH/src/github.com/julienschmidt/httprouter:$PROJECT_PATH \
    -w=$PROJECT_PATH \
    micanzhang/golang-testing \
    sh -c "coverage all"
```

Change `PROJECT_PATH` variable. Replace `github.com/julienschmidt/httprouter` with your github path.

### pull from docker hub

docker hub url: [https://hub.docker.com/r/micanzhang/golang-testing](https://hub.docker.com/r/micanzhang/golang-testing)

pull from docker hub by run:
```
$ docker pull micanzhang/golang-testing
```
