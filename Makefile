IMAGE_NAME?=zeroconfigio/node:latest

build:
	docker build -t $(IMAGE_NAME) .

lint:
	docker run --rm -i -v $(PWD)/.hadolint.yaml:/root/.config/hadolint.yaml hadolint/hadolint:latest-alpine < Dockerfile
