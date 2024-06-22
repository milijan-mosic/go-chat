FROM golang:1.22.4-alpine
WORKDIR /app
COPY . /app
RUN go install github.com/air-verse/air@latest
RUN go mod download
RUN go mod tidy

EXPOSE 8080
RUN go build -o build/ src/main.go
CMD ./build/main
