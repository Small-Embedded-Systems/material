# PdfLatex makefile for lecture slides and handouts
TEXF=-shell-escape -file-line-error -halt-on-error -interaction batchmode
%.pdf: %.tex
	pdflatex $(TEXF) $*
	bibtex $*
	pdflatex $(TEXF) $*
	pdflatex $(TEXF) $*
