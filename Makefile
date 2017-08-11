#!/bin/make -f

BIN_NAME=tftpd
VERSION?=$(shell git describe --tags --always --dirty)
CGO_ENABLED=0
ENV=CGO_ENABLED=$(CGO_ENABLED)

.DEFAULT_GOAL := build

style:
	@if [ $$(gofmt -l .) ]; then echo "gofmt check failed."; echo "diff is:"; gofmt -d .; exit 1; fi

build: style
	$(ENV) go build -o $(BIN_NAME) -a -ldflags "-X 'main.programVersion=$(VERSION)'"

test: build
	$(ENV) go test ./...

clean:
	rm -f $(BIN_NAME)

.PHONY: clean test build

