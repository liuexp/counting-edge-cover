all:
	xelatex main.tex
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex
##	cp main.pdf ~/public_html/
	pdflatex z.tex
	pdflatex z.tex
	bibtex z
	pdflatex z.tex
	pdflatex z.tex
##	cp z.pdf ~/public_html/main.pdf
##	echo `date` > ~/public_html/lastupdated
##	rm *.aux
##	rm *.bbl
##	rm *.blg
##	rm *.log

zip:
	zip z.zip *.tex *.pdf refs.bib Makefile
