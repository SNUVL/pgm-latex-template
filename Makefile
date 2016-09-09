.PHONY: all clean

# TODO : match your file name
BIB := writeup.bib
TEX := writeup.tex
TARGET := writeup.pdf

all: target $(addprefix target/,$(TARGET))

target/$(TARGET): $(TEX) $(BIB)
	latexmk -pdf -pdflatex="xelatex -halt-on-error -interaction=nonstopmode" \
		-output-directory='./target' $(TEX)

target:
	mkdir -p "./target"

clean:
	rm -rf target
