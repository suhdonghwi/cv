TEX := cv.tex

.PHONY: all pdf clean distclean

all: pdf

pdf: $(TEX)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	latexmk -c -xelatex $(TEX)

distclean:
	latexmk -C -xelatex $(TEX)
