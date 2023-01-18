FROM golang:1.19.5-alpine3.16

WORKDIR /go/src/HTTP_server

COPY go.mod go.sum ./

RUN go mod download

COPY ./ ./

RUN GOOS=linux go build -o server ./server.go

CMD ["./server"]
