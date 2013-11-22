all:
	latex proceeding.tex
	latex proceeding.tex
	bibtex proceeding
	latex proceeding.tex
	latex proceeding.tex
	dvipdf proceeding.dvi
##	cp main.pdf ~/public_html/
##	cp z.pdf ~/public_html/main.pdf
##	echo `date` > ~/public_html/lastupdated

clean:
	rm *.aux
	rm *.bbl
	rm *.blg
	rm *.log

zip:
	zip z.zip *.tex *.pdf refs.bib Makefile
