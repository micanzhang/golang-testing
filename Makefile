.PHONY: build

TAG = $(TRAVIS_GO_VERSION)
ifeq (tip,$(TAG))
	TAG =
endif

build:
	docker build --no-cache -f Dockerfile$(TAG) -t micanzhang/golang-testing .

test:   build
	docker run --rm \
		micanzhang/golang-testing \
		sh -c "go get github.com/micanzhang/pg && cd $GOPATH/src/github.com/pg && coverage all"
