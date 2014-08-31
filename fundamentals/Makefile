manuscript = fundamentals
references = `ls *.bib`
latexopt   = -halt-on-error -file-line-error

for file in $(references); do \
   ref_handles = $(ref_handles) $(file).bib \
done

all: all-via-pdf

all-via-pdf: $(manuscript).tex $(ref_handles)
	pdflatex $(latexopt) $<
	bibtex $(manuscript).aux
	pdflatex $(latexopt) $<
	pdflatex $(latexopt) $<

all-via-dvi: 
	latex $(latexopt) $(manuscript)
	bibtex $(manuscript).aux
	latex $(latexopt) $(manuscript)
	latex $(latexopt) $(manuscript)
	dvipdf $(manuscript)

clean:
	rm -f *.pdf *.dvi *.toc *.aux *.out *.log *.bbl *.blg *.log *.spl *~ *.spl *.zip *.acn *.glo *.ist

realclean: clean
	rm -rf $(manuscript).dvi
	rm -f $(manuscript).pdf

%.ps :%.eps
	convert $< $@

%.png :%.eps
	convert $< $@

zip:
	zip paper.zip *.tex *.eps *.bib

.PHONY: all clean
