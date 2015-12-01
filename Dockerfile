# golang good morning application

FROM golang
MAINTAINER Yuanzhen.ZHOU <szrednick@gmail.com>

# Document that the service listens on port 8080.
EXPOSE 8080

# Assuming workspace (GOPATH) configured at /go.
ADD . /go/src/github.com/dalmait/dm-docker-go-http-hi

# get dependencies and install. TODO use "godep".
# RUN go get github.com/dalma/xyz
RUN go install github.com/dalmait/dm-docker-go-http-hi

ENTRYPOINT /go/bin/dm-docker-go-http-hi
