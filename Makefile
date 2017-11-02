.PHONY: build

build:
ifeq ($(tag),)
	@echo "Usage: make $@ tag=<tag>"
	@exit 1
endif
	docker build --no-cache -f Dockerfile$(tag) -t micanzhang/golang-testing .

test: build
	docker run --rm \
		micanzhang/golang-testing \
		sh -c "go get github.com/micanzhang/pg && cd $GOPATH/src/github.com/pg && coverage all"
