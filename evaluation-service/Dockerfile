FROM golang:tip-trixie AS builder

WORKDIR /app

COPY . .

RUN go build .

RUN go mod tidy

CMD ["go", "run", "."]
