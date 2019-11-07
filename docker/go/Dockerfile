ARG GO_VERSION_TAG=${GO_VERSION_TAG}
FROM golang:${GO_VERSION_TAG} as build

WORKDIR /go/app

RUN set -ex
RUN apk update
RUN apk add --no-cache git
RUN go get gopkg.in/urfave/cli.v2
RUN go get github.com/oxequa/realize
RUN go get -u github.com/go-delve/delve/cmd/dlv
RUN go build -o /go/bin/dlv github.com/go-delve/delve/cmd/dlv

COPY . .
RUN go build -o hello



FROM alpine:3.10
WORKDIR /app
#COPY --from=build /go/app/portfolio-backend .
RUN set -x
RUN addgroup go
RUN adduser -D -G go go
#RUN chown -R go:go /app/portfolio-backend
#CMD ["./portfolio-backend"]
