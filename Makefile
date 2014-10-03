all:
	docker build -t neuraldata .

shell:
	docker run --rm -t -i neuraldata bash


