CC=pdflatex
BIBCC=bibtex

SRC=alevelcs
FULL=$(SRC).tex
EDITOR=vim
CITE=sources.bib

all: #sue me, it wasn't working
	make pdfgen
#	make bibgen
#	make pdfgen
#	make pdfgen

test:
	echo
	echo FLAG FLAG FLAG FLAG
	echo

bibgen:
	$(BIBCC) $(SRC)

pdfgen:
	$(CC) $(SRC)

clean:
	rm -f *.pdf *.log *.aux *.blg *.bbl *.toc *.aux

clr:
	clear

clear: clr all

edit:  # look, it doesn't autocomplete and typing is a hassle
	$(EDITOR) $(FULL)

e: edit  # typing is a real hassle

bib:  # typing's still a hassle
	$(EDITOR) $(CITE)

b: bib  # typing bad

