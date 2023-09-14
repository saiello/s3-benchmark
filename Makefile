
IMAGE=saiello/s3-benchmark


build:
	env GOOS=linux GOARCH=amd64 go build s3-benchmark.go	

push:
	docker push $(IMAGE) 

bake:
	docker build -t $(IMAGE) -f Dockerfile.ubi9 .

all: build bake push
