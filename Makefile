TAG = $(TRAVIS_GO_VERSION)
ifeq (tip,$(TAG))
	TAG =
else ifeq (1.14, $(TAG))
	TAG =
endif

build:
	docker build --no-cache -f Dockerfile$(TAG) -t micanzhang/golang-testing .

test:   build
	docker run --rm \
		micanzhang/golang-testing \
		sh -c "go get github.com/google/go-querystring/query && cd /go/src/github.com/google/go-querystring && coverage all"
