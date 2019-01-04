FROM golang:1.9.1-alpine3.6

LABEL maintainer="Bo-Yi Wu <appleboy.tw@gmail.com>"

ADD . /go/src/github.com/marcotomas/docker-helloworld

RUN go install github.com/marcotomas/docker-helloworld

CMD ["/go/bin/docker-helloworld"]