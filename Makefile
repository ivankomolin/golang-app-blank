.PHONY: *

CONTAINER = docker run --rm \
	-v ${PWD}/app/:/usr/src/myapp/ \
		-w /usr/src/myapp \
		-e GOPATH=/usr/src/myapp \
		-e GOOS=linux \
		-e GOARCH=amd64 \
		golang:1.8

go:
	bash -c "${CONTAINER} ${cmd}" || true