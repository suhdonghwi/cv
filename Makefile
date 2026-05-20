TEX := cv.tex
OUTDIR := dist

.PHONY: all pdf clean distclean

all: pdf

pdf: $(TEX)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR) $(TEX)

clean:
	latexmk -c -xelatex -outdir=$(OUTDIR) $(TEX)

distclean:
	rm -rf $(OUTDIR)
