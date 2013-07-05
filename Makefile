all:
	xelatex main.tex
	xelatex main.tex
	bibtex main
	xelatex main.tex
	cp main.pdf ~/public_html/
	echo `date` > ~/public_html/lastupdated

zip:
	zip z.zip *.tex *.pdf Makefile
