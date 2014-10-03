PWD := $(shell pwd)
ARGS := -v ${PWD}/my-work:/my-work

all:	build shell
	@echo

build:
	docker build -t neuraldata .

shell:
	mkdir -p my-work
	docker run --rm -t -i ${ARGS} neuraldata bash

notebook:	build
	mkdir -p my-work
	docker run --rm ${ARGS} -p 8888:8888 -i neuraldata ipython notebook --no-secure --no-browser --ip=0.0.0.0
