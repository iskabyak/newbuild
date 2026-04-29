IMAGE_TAG=quay.io/iskabyak/kbot:latest

linux:
GOOS=linux GOARCH=amd64 go build -o app

windows:
GOOS=windows GOARCH=amd64 go build -o app.exe

darwin:
GOOS=darwin GOARCH=amd64 go build -o app

arm:
GOOS=linux GOARCH=arm64 go build -o app

image:
docker build -t $(IMAGE_TAG) .

clean:
docker rmi $(IMAGE_TAG)

