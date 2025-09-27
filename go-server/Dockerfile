# Stage 1: Build Go binary
FROM golang:1.22-alpine AS builder
WORKDIR /app

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

# Copy go modules and download deps
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .
RUN go build -o server .

# Stage 2: Run binary
FROM alpine:latest
WORKDIR /root/

# Copy the compiled binary
COPY --from=builder /app/server .

EXPOSE 8080
CMD ["./server"]
