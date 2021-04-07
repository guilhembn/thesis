all: These.pdf clean

These.pdf: These.tex These.bib
	pdflatex These.tex
	bibtex These
	pdflatex These.tex
	pdflatex These.tex

clean:
	rm -f *.aux *.brf *.mtc* *.nlo *.nls *.out *.tdo *.toc *.maf *.log *.ilg *.fls *.blg *.bbl 
