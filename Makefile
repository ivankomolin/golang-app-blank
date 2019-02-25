.PHONY: *

CONTAINER = docker run --rm \
	-v ${PWD}:/usr/src/myapp \
		-w /usr/src/myapp \
		-e GOPATH=/usr/src/myapp \
		-e GOOS=linux \
		-e GOARCH=amd64 \
		golang:1.8

build:
	bash -c "${CONTAINER} go build ${path}"

run:
	bash -c "${CONTAINER} go run ${path}"

get:
	bash -c "${CONTAINER} go get ${path}"