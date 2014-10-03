PWD := $(shell pwd)
ARGS := -v ${PWD}/my-work:/my-work

all:	shell
	@echo

shell:
	mkdir -p my-work
	docker run --rm -t -i ${ARGS} -w /my-work ipython/scipystack bash

notebook:
	mkdir -p my-work
	docker run --rm ${ARGS} -t -i -p 443:8888 -e "PASSWORD=password" ipython/notebook
