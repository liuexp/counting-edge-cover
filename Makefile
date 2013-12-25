all:
	latex main.tex
	latex main.tex
	bibtex main
	latex main.tex
	latex main.tex
	dvipdf main.dvi
##	cp main.pdf ~/public_html/
##	pdflatex z.tex
##	pdflatex z.tex
##	bibtex z
##	pdflatex z.tex
##	pdflatex z.tex
##	cp z.pdf ~/public_html/main.pdf
##	echo `date` > ~/public_html/lastupdated

clean:
	rm *.aux
	rm *.bbl
	rm *.blg
	rm *.log

zip:
	zip z.zip *.tex *.pdf refs.bib Makefile
