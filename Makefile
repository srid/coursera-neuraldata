PWD := $(shell pwd)

all:	build shell
	@echo

build:
	docker build -t neuraldata .

shell:
	mkdir -p my-work
	docker run --rm -t -i -v ${PWD}/my-work:/my-work neuraldata bash
