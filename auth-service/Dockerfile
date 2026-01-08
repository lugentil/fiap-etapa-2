FROM golang:tip-trixie AS builder

WORKDIR /app

COPY . .

RUN go build .

RUN go mod tidy

ENV DATABASE_URL="postgres://postgres:teste123@postgresql-db-1:5432/auth_db"

ENV PORT="8001"

ENV MASTER_KEY="admin-secreto-123"

CMD ["go", "run", "."]
