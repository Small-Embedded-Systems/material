# PdfLatex makefile for lecture slides and handouts
TEXF=-shell-escape -file-line-error -halt-on-error -interaction batchmode

LECTURES=basic-electronics.pdf bitwise-operations.pdf \
         complex-declarations.pdf device-drivers.pdf \
         IntroductionToARM.pdf lecture-template.pdf \
         polling-interupts.pdf

SEMINARS=button-driver.pdf button-interrupts.pdf \
          intro-debug.pdf led-drivers.pdf \
          light-characteristics.pdf seminar-template.pdf \
          timer-interrupts.pdf 

ALL: $(LECTURES) $(SEMINARS)

%.pdf: %.tex
	pdflatex $(TEXF) $*
	bibtex $*
	pdflatex $(TEXF) $*
	pdflatex $(TEXF) $*

