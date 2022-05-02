all: pdf clean

pdf:
	@echo $(md)
	docker run --rm --volume $(shell pwd):/data --user $(shell id -u):$(shell id -g) pandoc/latex -o book.pdf --toc -V geometry:a4paper -V geometry:margin=3.7cm --pdf-engine=xelatex -Vtoc-title:"Indice" $(md)

clean:
	rm -f book.pdf
