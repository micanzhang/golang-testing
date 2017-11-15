TAG = $(TRAVIS_GO_VERSION)
ifeq (tip,$(TAG))
	TAG = .
else ifeq(, $(TAG))
	TAG = .
endif

build:
	cd $(TAG) &&  docker build --no-cache -f Dockerfile -t micanzhang/golang-testing .

test:   build
	docker run --rm \
		micanzhang/golang-testing \
		sh -c "go get github.com/julienschmidt/httprouter && cd /go/src/github.com/julienschmidt/httprouter && coverage all"
