FROM quay.io/projectquay/golang

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o app

CMD ["./app"]

