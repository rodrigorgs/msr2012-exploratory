FILENAME = msr2012-exploratory
BIBFILENAME = $(FILENAME)

all: $(FILENAME).tex $(BIBFILENAME).bib
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

clean:
	-rm -f *.aux *.bbl *.blg *.log *.out *.idx *.ilg *.ind *.toc *.d
