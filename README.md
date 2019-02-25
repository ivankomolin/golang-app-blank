## Requirements:

 - Docker v18.09+
 - Git
 - Make
 - Bash

## Quick start

```
$ git clone git@github.com:ivankomolin/docker-golang-app-blank.git ./
$ make go cmd="go -v"
```

## Examples

Run main.go
```
$ make go cmd="go run main.go"
```

Build main.go
```
$ make go cmd="go buld main.go"
```

Get external pkg
```
$ make go cmd="go get github.com/ernesto-jimenez/httplogger"
```
