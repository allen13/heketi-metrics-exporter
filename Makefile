GO = go
BIN_DIR ?= $(shell pwd)

info:
	@echo "build: Go build"
	@echo "docker: build and run in docker container"
	@echo "gotest: run go tests and reformats"

build:
	$(GO) build -o heketi-metrics-exporter

docker:
	docker build -t heketi-metrics-exporter .
